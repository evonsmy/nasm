;Testname=avx512pf; Arguments=-fbin -oavx512pf.bin -O0 -DSRC; Files=stdout stderr avx512pf.bin
; AVX-512PF testcases from gas
;------------------------
;
; This file is taken from there
;     https://gnu.googlesource.com/binutils/+/master/gas/testsuite/gas/i386/x86-64-avx512pf-intel.d
; So the original author is "H.J. Lu" <hongjiu dot lu at intel dot com>
;
; Jin Kyu Song converted it for the nasm testing suite using gas2nasm.py

%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0dpd  [r14+ymm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0dpd  [r14+ymm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x4c, 0x39, 0x20                         }, { vgatherpf0dpd  [r9+ymm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc6, 0x8c, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf0dpd  [rcx+ymm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0dps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0dps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x4c, 0x39, 0x40                         }, { vgatherpf0dps  [r9+zmm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc6, 0x8c, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf0dps  [rcx+zmm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0qpd  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0qpd  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x4c, 0x39, 0x20                         }, { vgatherpf0qpd  [r9+zmm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc7, 0x8c, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf0qpd  [rcx+zmm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0qps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x8c, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf0qps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x4c, 0x39, 0x40                         }, { vgatherpf0qps  [r9+zmm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc7, 0x8c, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf0qps  [rcx+zmm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1dpd  [r14+ymm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1dpd  [r14+ymm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x54, 0x39, 0x20                         }, { vgatherpf1dpd  [r9+ymm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc6, 0x94, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf1dpd  [rcx+ymm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1dps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1dps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x54, 0x39, 0x40                         }, { vgatherpf1dps  [r9+zmm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc6, 0x94, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf1dps  [rcx+zmm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1qpd  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1qpd  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x54, 0x39, 0x20                         }, { vgatherpf1qpd  [r9+zmm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc7, 0x94, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf1qpd  [rcx+zmm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1qps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x94, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vgatherpf1qps  [r14+zmm31*8+0x7b]\{k1\}                      }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x54, 0x39, 0x40                         }, { vgatherpf1qps  [r9+zmm31*1+0x100]\{k1\}                      }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc7, 0x94, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vgatherpf1qps  [rcx+zmm31*4+0x400]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0dpd  [r14+ymm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0dpd  [r14+ymm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x6c, 0x39, 0x20                         }, { vscatterpf0dpd  [r9+ymm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc6, 0xac, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf0dpd  [rcx+ymm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0dps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0dps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x6c, 0x39, 0x40                         }, { vscatterpf0dps  [r9+zmm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc6, 0xac, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf0dps  [rcx+zmm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0qpd  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0qpd  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x6c, 0x39, 0x20                         }, { vscatterpf0qpd  [r9+zmm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc7, 0xac, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf0qpd  [rcx+zmm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0qps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0xac, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf0qps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x6c, 0x39, 0x40                         }, { vscatterpf0qps  [r9+zmm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc7, 0xac, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf0qps  [rcx+zmm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1dpd  [r14+ymm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1dpd  [r14+ymm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc6, 0x74, 0x39, 0x20                         }, { vscatterpf1dpd  [r9+ymm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc6, 0xb4, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf1dpd  [rcx+ymm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1dps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1dps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc6, 0x74, 0x39, 0x40                         }, { vscatterpf1dps  [r9+zmm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc6, 0xb4, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf1dps  [rcx+zmm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1qpd  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1qpd  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0xfd, 0x41, 0xc7, 0x74, 0x39, 0x20                         }, { vscatterpf1qpd  [r9+zmm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0xfd, 0x41, 0xc7, 0xb4, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf1qpd  [rcx+zmm31*4+0x400]\{k1\}                    }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1qps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0xb4, 0xfe, 0x7b, 0x00, 0x00, 0x00       }, { vscatterpf1qps  [r14+zmm31*8+0x7b]\{k1\}                     }
testcase	{ 0x62, 0x92, 0x7d, 0x41, 0xc7, 0x74, 0x39, 0x40                         }, { vscatterpf1qps  [r9+zmm31*1+0x100]\{k1\}                     }
testcase	{ 0x62, 0xb2, 0x7d, 0x41, 0xc7, 0xb4, 0xb9, 0x00, 0x04, 0x00, 0x00       }, { vscatterpf1qps  [rcx+zmm31*4+0x400]\{k1\}                    }
testcase	{ 0x0f, 0x0d, 0x11                                                       }, { prefetchwt1 BYTE [rcx]                                       }
testcase	{ 0x42, 0x0f, 0x0d, 0x94, 0xf0, 0x23, 0x01, 0x00, 0x00                   }, { prefetchwt1 BYTE [rax+r14*8+0x123]                           }
