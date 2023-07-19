//Imports
import android.support.v7.app.AppCompatActivity
import java.util.*

//Class Declaration
class WarmingHearts : AppCompatActivity() {
    companion object {
        private const val TAG = "WarmingHearts"
    }

    //Variables for this Activity
    private lateinit var warmers: ArrayList<String>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_warming_hearts)
        
        warmers = ArrayList()
        
        //Setup the UI
        setupUI()

        //Set the click listeners for the buttons
        setButtonClickListeners()
        
        //Populate the listview with the current list of warmers
        populateListView()

    }

    //Setup the UI
    private fun setupUI() {
        val listView = findViewById<ListView>(R.id.list_warmers)
        listView.adapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, warmers)
    }

    //Set the Click Listeners for the Buttons
    private fun setButtonClickListeners() {
        val btnAdd = findViewById<Button>(R.id.btn_add)
        btnAdd.setOnClickListener {
            val warmerName = findViewById<EditText>(R.id.txt_name).text.toString()
            if (warmerName.isNotEmpty()) {
                warmers.add(warmerName)
            }
            populateListView()
        }

        val btnDelete = findViewById<Button>(R.id.btn_delete)
        btnDelete.setOnClickListener {
            val warmerName = findViewById<EditText>(R.id.txt_name).text.toString()
            if (warmerName.isNotEmpty()) {
                warmers.remove(warmerName)
            }
            populateListView()
        }
    }

    //Populate the ListView with the Current List of Warmers
    private fun populateListView() {
        val listView = findViewById<ListView>(R.id.list_warmers)
        listView.adapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, warmers)
    }
}