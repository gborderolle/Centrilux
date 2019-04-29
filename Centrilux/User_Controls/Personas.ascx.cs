using Centrilux.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Centrilux.User_Controls
{
    public partial class Personas : System.Web.UI.UserControl
    {
        public event Action LoadCompleted = delegate { };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
            lblMessage.Text = "";
            gridPersonas.UseAccessibleHeader = true;
            gridPersonas.HeaderRow.TableSection = TableRowSection.TableHeader;
            this.LoadCompleted();
        }

        private void BindGrid()
        {
            bool ok = false;
            if (Request.QueryString["tabla"] != null && Request.QueryString["dato"] != null)
            {
                string tabla_str = Request.QueryString["tabla"];
                string form_ID_str = Request.QueryString["dato"];

                if (!string.IsNullOrWhiteSpace(tabla_str) && tabla_str.Equals("clientes"))
                {
                    using (CentriluxDB context = new CentriluxDB())
                    {
                        hdnPersonasCount.Value = context.Persona.Count().ToString();
                        if (context.Persona.Count() > 0)
                        {
                            gridPersonas.DataSource = context.Persona.ToList();
                            gridPersonas.DataBind();
                            ok = true;
                        }
                    }
                }
            }
            if (!ok)
            {
                var obj = new List<Persona>();
                obj.Add(new Persona());
                // Bind the DataTable which contain a blank row to the GridView
                gridPersonas.DataSource = obj;
                gridPersonas.DataBind();
                int columnsCount = gridPersonas.Columns.Count;
                gridPersonas.Rows[0].Cells.Clear();// clear all the cells in the row
                gridPersonas.Rows[0].Cells.Add(new TableCell()); //add a new blank cell
                gridPersonas.Rows[0].Cells[0].ColumnSpan = columnsCount; //set the column span to the new added cell

                //You can set the styles here
                gridPersonas.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                gridPersonas.Rows[0].Cells[0].ForeColor = System.Drawing.Color.Red;
                gridPersonas.Rows[0].Cells[0].Font.Bold = true;
                //set No Results found to the new added cell
                gridPersonas.Rows[0].Cells[0].Text = "No hay registros";
            }
            //ScriptManager.RegisterStartupScript(this, typeof(Page), "updateCounts", "updateCounts();", true);
        }

        protected void gridPersonas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void gridPersonas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        //protected void gridPersonas_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //}

        //protected void gridPersonas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //}

        //protected void gridPersonas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //}

        //protected void gridPersonas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //}

        protected void PageDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Recupera la fila.
            GridViewRow pagerRow = gridPersonas.BottomPagerRow;
            // Recupera el control DropDownList...
            DropDownList pageList = (DropDownList)pagerRow.Cells[0].FindControl("PageDropDownList");
            //// Se Establece la propiedad PageIndex para visualizar la página seleccionada...
            gridPersonas.PageIndex = pageList.SelectedIndex;
            //Quita el mensaje de información si lo hubiera...
            lblMessage.Text = "";
        }

    }
}