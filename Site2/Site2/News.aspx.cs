using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site2
{
    public partial class News : System.Web.UI.Page
    {
        public string Message { get; set; }
        public int FeaturedId { get; set; }
        public NewDatabaseEntities db = new NewDatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
        Message = "DbLoaded";
            FeaturedId = 2;

        }
        
    }
}