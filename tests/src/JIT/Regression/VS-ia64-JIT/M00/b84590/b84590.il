// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly bge2.exe{}
.method public	static int32 main() {
.entrypoint
// r4 real >= unordered
        ldc.r4          float32(0xBF800000)
        ldc.r4          float32(0x7FC00000)
        bge.un          pass
	ldc.i4		0x0
	ret
pass:	ldc.i4		100
	ret
}

