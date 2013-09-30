package io.vec.demo.android.ipc;

import android.os.MemoryFile;

public class IPC {
	public static native boolean setMemoryFile(MemoryFile mfs);

	static {
		System.loadLibrary("ipc_shared");
	}
}