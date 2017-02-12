package software_engineering.cocktailbot;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class SplashScreen extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {

    private int SplashScreenTime= 2500;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        View dView = getWindow().getDecorView();
        dView.setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN);
        toolbar.setVisibility(View.GONE);                       // Remove toolbar visibility to make room for Logo as well as removing the unnecessary actions that can be present during splash

        new Handler().postDelayed(new Runnable(){
            @Override
            public void run() {
                Intent mainMenu = new Intent(getApplicationContext(), MainMenu.class);                    // Create a new intent using this splash screen as well as the Main Class
                startActivity(mainMenu);                                          // Start intent
                finish();                                                         // Finish current screen in SplashScreenTime
                }
            }, SplashScreenTime);

    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Handle navigation view item clicks here.
        int id = item.getItemId();

        if (id == R.id.add_item) {
//
        } else if (id == R.id.view_recipes) {

        } else if (id == R.id.view_drinks) {

        } else if (id == R.id.main_menu) {

        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
}
