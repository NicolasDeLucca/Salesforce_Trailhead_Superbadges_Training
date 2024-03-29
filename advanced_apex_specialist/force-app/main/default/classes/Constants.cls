public class Constants
{
    // An Integer used to control the number of rows displayed by a Visualforce page.
    public static final Integer DEFAULT_ROWS = 5;
    
    // A String used to populate picklist values in Visualforce Pages.
    public static final String SELECT_ONE = Label.Select_One;

    // A String used to determine the threshold that causes low inventory alerts.
    public static final String INVENTORY_LEVEL_LOW = Label.Inventory_Level_Low;
    
    // A list used to populate picklist values in Visualforce pages.
    public static final List<Schema.PicklistEntry> PRODUCT_FAMILY = Product2.Family.getDescribe().getPicklistValues();

    // A String used to indicate that an order is a “draft”—an order that is in flight. 
    public static final String DRAFT_ORDER_STATUS = 'Draft';

    // A String used to evaluate if an Order is Activated or not.
    public static final String ACTIVATED_ORDER_STATUS = 'Activated';

    // A String used to query a Chatter Group by Name.
    public static final String INVENTORY_ANNOUNCEMENTS = 'Inventory Announcements';

    // A String used to display user friendly error messages on Visualforce pages.
    public static final String ERROR_MESSAGE = 'An error has occurred, please take a screenshot with the URL and send it to IT.';
    
    private static List<Pricebook2> pricebooks =
    [
        SELECT Id 
        FROM PRICEBOOK2 
        WHERE ISSTANDARD = TRUE
    ];
    
	// An Id used to create Orders and PricebookEntries in business and test code.
    public static final Id STANDARD_PRICEBOOK_ID = Test.isRunningTest() ? Test.getStandardPricebookId():
    	pricebooks.size() > 0 ? pricebooks[0].Id : null; 
    
    // An Integer used to define default order items unit prices in test code.
    public static final Decimal DEFAULT_UNIT_PRICE = 100;

    // An Integer used to define default product initials inventories in test code.
    public static final Integer DEFAULT_INITIAL_INVENTORY = 10;
}