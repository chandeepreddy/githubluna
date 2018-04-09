public class Prlde_Customer_Quote {
    public Prlde_Customer_Quote(apexpages.StandardController controller){
        Apexpages.currentPage().getHeaders().put('content-disposition', 'attachment; filename=Customer Quote.pdf');
    }
}
/*
*/