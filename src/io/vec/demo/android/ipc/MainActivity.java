package io.vec.demo.android.ipc;

import java.io.IOException;

import android.app.Activity;
import android.os.Bundle;
import android.os.MemoryFile;
import android.util.Log;
import android.view.Menu;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		try {
			MemoryFile mf = new MemoryFile("shm-demo", 1024);
			boolean ipcStatus = IPC.setMemoryFile(mf);
			Log.i("AndroidIPC::SHM", "IPC.setMemoryFile " + ipcStatus);
			mf.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
