.class public Landroid/taobao/filecache/FileDir;
.super Ljava/lang/Object;
.source "FileDir.java"


# static fields
.field public static final CREATE:I = 0x4

.field public static final DELETE:I = 0x3

.field public static FILEINFO:Ljava/lang/String; = null

.field public static final READ:I = 0x1

.field public static final WRITE:I = 0x2


# instance fields
.field private baseDirPath:Ljava/lang/String;

.field private creator:Landroid/taobao/filecache/FileInfoCreator;

.field private currentTime:J

.field private fInfoChannel:Ljava/nio/channels/FileChannel;

.field private fInfoLock:Ljava/nio/channels/FileLock;

.field private fInfoOs:Ljava/io/RandomAccessFile;

.field private isInit:Z

.field private isNoSpaceClear:Z

.field private listener:Landroid/taobao/filecache/FileDirListener;

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mainThreadId:J

.field private maxCapacity:I

.field private sdcard:Z

.field private sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Landroid/taobao/filecache/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private storedFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/filecache/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "tbsdk_android_finfo.dat"

    sput-object v0, Landroid/taobao/filecache/FileDir;->FILEINFO:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "url"
    .parameter "sdcard"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Landroid/taobao/filecache/FileDir;->isNoSpaceClear:Z

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    .line 52
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/filecache/FileDir;->sdcard:Z

    .line 53
    iput-object p1, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/filecache/FileDir;->mainThreadId:J

    .line 56
    return-void
.end method

.method private collectFiles(Ljava/lang/String;)Z
    .locals 22
    .parameter "infoPath"

    .prologue
    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 642
    .local v16, time:J
    const/4 v4, 0x0

    .line 643
    .local v4, buffer:Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 646
    .local v11, infoByte:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v18

    if-nez v18, :cond_0

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 648
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 650
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 658
    :goto_0
    const/4 v15, 0x0

    .line 659
    .local v15, reWrite:Z
    const-string v18, "FileDir"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "collectFiles read fileinfo:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 661
    if-eqz v11, :cond_9

    .line 662
    const-string v18, "collectFiles"

    const-string v19, "read fileinfo success"

    invoke-static/range {v18 .. v19}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v13, 0x0

    .line 664
    .local v13, offset:I
    const/4 v12, 0x0

    .line 665
    .local v12, newLineMark:I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 670
    .local v3, bos:Ljava/io/ByteArrayOutputStream;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    const/16 v18, 0xd

    aget-byte v18, v11, v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 671
    new-instance v5, Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v11, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 672
    .local v5, currentTimeStr:Ljava/lang/String;
    const-string v18, "FileDir"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Timer is exist: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/taobao/filecache/FileDir;->currentTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v11, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 680
    const/16 v13, 0xe

    .line 681
    const/16 v12, 0xe

    .line 698
    .end local v5           #currentTimeStr:Ljava/lang/String;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/taobao/filecache/FileInfoCreator;->getFileInfoMinLength()I

    move-result v14

    .line 700
    .local v14, pathLength:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "utf-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    add-int v14, v14, v18

    .line 707
    :goto_3
    move v13, v14

    .line 708
    :goto_4
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 709
    aget-byte v18, v11, v13

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    move-object/from16 v18, v0

    sub-int v19, v13, v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v11, v12, v1}, Landroid/taobao/filecache/FileInfoCreator;->onParseFileInfo([BII)Landroid/taobao/filecache/FileInfo;

    move-result-object v8

    .line 716
    .local v8, fileInfo:Landroid/taobao/filecache/FileInfo;
    if-eqz v8, :cond_6

    .line 717
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v8, v0, v1}, Landroid/taobao/filecache/FileInfo;->getFileInfoTime(J)J

    move-result-wide v9

    .line 718
    .local v9, fileInfoTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v9, v18

    if-lez v18, :cond_2

    .line 719
    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    .line 722
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-interface {v8}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 724
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v8, v0, v1}, Landroid/taobao/filecache/FileInfo;->setFileInfoPos(J)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-interface {v8}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sub-int v18, v13, v12

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v11, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 739
    .end local v9           #fileInfoTime:J
    :goto_5
    add-int/lit8 v12, v13, 0x1

    .line 740
    add-int/2addr v13, v14

    .line 708
    .end local v8           #fileInfo:Landroid/taobao/filecache/FileInfo;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 651
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #newLineMark:I
    .end local v13           #offset:I
    .end local v14           #pathLength:I
    .end local v15           #reWrite:Z
    :catch_0
    move-exception v6

    .line 653
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 675
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #currentTimeStr:Ljava/lang/String;
    .restart local v12       #newLineMark:I
    .restart local v13       #offset:I
    .restart local v15       #reWrite:Z
    :catch_1
    move-exception v6

    .line 676
    .restart local v6       #e:Ljava/lang/Exception;
    const-wide v18, 0x1d1a94a2000L

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/taobao/filecache/FileDir;->currentTime:J

    .line 677
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 684
    .end local v5           #currentTimeStr:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    const-string v18, "FileDir"

    const-string v19, "Timer is not exist, init to 2000000000000 "

    invoke-static/range {v18 .. v19}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-wide v18, 0x1d1a94a2000L

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/taobao/filecache/FileDir;->currentTime:J

    .line 687
    :try_start_3
    const-string v18, "2000000000000"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 688
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 693
    :goto_6
    array-length v0, v11

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 694
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 689
    :catch_2
    move-exception v6

    .line 691
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 701
    .end local v6           #e:Ljava/io/IOException;
    .restart local v14       #pathLength:I
    :catch_3
    move-exception v7

    .line 703
    .local v7, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 731
    .end local v7           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #fileInfo:Landroid/taobao/filecache/FileInfo;
    .restart local v9       #fileInfoTime:J
    :cond_5
    const/4 v15, 0x1

    goto :goto_5

    .line 736
    .end local v9           #fileInfoTime:J
    :cond_6
    const/4 v15, 0x1

    goto :goto_5

    .line 744
    .end local v8           #fileInfo:Landroid/taobao/filecache/FileInfo;
    :cond_7
    const-string v18, "FileDir"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parse fileinfo:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 750
    if-eqz v15, :cond_8

    .line 759
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 761
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 762
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 778
    :goto_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 784
    :cond_8
    :goto_8
    const-string v18, "FileDir"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "write fileinfo:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/16 v18, 0x1

    .line 788
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #newLineMark:I
    .end local v13           #offset:I
    .end local v14           #pathLength:I
    :goto_9
    return v18

    .line 764
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #newLineMark:I
    .restart local v13       #offset:I
    .restart local v14       #pathLength:I
    :catch_4
    move-exception v6

    .line 766
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 779
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 781
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 788
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v12           #newLineMark:I
    .end local v13           #offset:I
    .end local v14           #pathLength:I
    :cond_9
    const/16 v18, 0x0

    goto :goto_9
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 11
    .parameter "fileName"

    .prologue
    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 437
    .local v9, time:J
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v6, file:Ljava/io/File;
    invoke-static {p1}, Landroid/taobao/filecache/FileAccesser;->delete(Ljava/lang/String;)Z

    move-result v8

    .line 440
    .local v8, ret:Z
    if-eqz v8, :cond_1

    .line 442
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 443
    .local v7, parent:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 446
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    .end local v7           #parent:Ljava/io/File;
    :cond_1
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 457
    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 459
    :cond_2
    const-string v0, "FileDir"

    const-string v1, "delete success"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/filecache/FileInfo;

    .line 462
    .local v2, fileInfo:Landroid/taobao/filecache/FileInfo;
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    invoke-interface {v2}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/taobao/filecache/FileInfoCreator;->onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;

    move-result-object v2

    .line 465
    invoke-direct {p0, v2}, Landroid/taobao/filecache/FileDir;->refreshFileInfo(Landroid/taobao/filecache/FileInfo;)V

    .line 468
    const-string v0, "FileDir"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete time cost:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    const/4 v8, 0x1

    .line 475
    .end local v8           #ret:Z
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    .end local v2           #fileInfo:Landroid/taobao/filecache/FileInfo;
    :goto_0
    return v8

    .line 471
    .restart local v8       #ret:Z
    :cond_3
    :try_start_1
    const-string v0, "FileDir"

    const-string v1, "delete failed"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :cond_4
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private onFileOverflow(Ljava/util/concurrent/PriorityBlockingQueue;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Landroid/taobao/filecache/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<Landroid/taobao/filecache/FileInfo;>;"
    const-string v0, "FileDir"

    const-string v1, "onFileOverflow"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v6, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/filecache/FileInfo;>;"
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->listener:Landroid/taobao/filecache/FileDirListener;

    if-nez v0, :cond_2

    .line 516
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 520
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v10

    .line 521
    .local v10, size:I
    iget v0, p0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v10, v0

    .line 522
    :goto_0
    if-lez v10, :cond_1

    .line 523
    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/taobao/filecache/FileInfo;

    .line 524
    .local v9, info:Landroid/taobao/filecache/FileInfo;
    if-eqz v9, :cond_0

    .line 525
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    add-int/lit8 v10, v10, -0x1

    .line 527
    goto :goto_0

    .line 528
    .end local v9           #info:Landroid/taobao/filecache/FileInfo;
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 533
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/taobao/filecache/FileInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/taobao/filecache/FileInfo;

    .line 534
    .local v7, deleteFiles:[Landroid/taobao/filecache/FileInfo;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v7

    if-ge v8, v0, :cond_6

    .line 536
    aget-object v0, v7, v8

    invoke-interface {v0}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/taobao/filecache/FileDir;->deleteFile(Ljava/lang/String;)Z

    .line 534
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 530
    .end local v7           #deleteFiles:[Landroid/taobao/filecache/FileInfo;
    .end local v8           #i:I
    .end local v10           #size:I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 540
    :cond_2
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 544
    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v10

    .line 545
    .restart local v10       #size:I
    iget v0, p0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v10, v0

    .line 546
    :goto_2
    if-lez v10, :cond_4

    .line 547
    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/taobao/filecache/FileInfo;

    .line 548
    .restart local v9       #info:Landroid/taobao/filecache/FileInfo;
    if-eqz v9, :cond_3

    .line 549
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_3
    add-int/lit8 v10, v10, -0x1

    .line 551
    goto :goto_2

    .line 552
    .end local v9           #info:Landroid/taobao/filecache/FileInfo;
    :cond_4
    invoke-virtual {p1, v6}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 554
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 557
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/taobao/filecache/FileInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/taobao/filecache/FileInfo;

    .line 558
    .restart local v7       #deleteFiles:[Landroid/taobao/filecache/FileInfo;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    array-length v0, v7

    if-ge v8, v0, :cond_6

    .line 560
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->listener:Landroid/taobao/filecache/FileDirListener;

    aget-object v1, v7, v8

    invoke-interface {v1}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/taobao/filecache/FileDirListener;->onFileOverflow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 561
    aget-object v0, v7, v8

    invoke-interface {v0}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/taobao/filecache/FileDir;->deleteFile(Ljava/lang/String;)Z

    .line 558
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 554
    .end local v7           #deleteFiles:[Landroid/taobao/filecache/FileInfo;
    .end local v8           #i:I
    .end local v10           #size:I
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 563
    .restart local v7       #deleteFiles:[Landroid/taobao/filecache/FileInfo;
    .restart local v8       #i:I
    .restart local v10       #size:I
    :cond_5
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    :try_start_2
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    aget-object v1, v7, v8

    invoke-interface {v1}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    aget-object v0, v7, v8

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    aget-object v1, v7, v8

    invoke-interface {v1}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v7, v8

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/taobao/filecache/FileInfoCreator;->onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;

    move-result-object v0

    aput-object v0, v7, v8

    .line 568
    aget-object v0, v7, v8

    invoke-direct {p0, v0}, Landroid/taobao/filecache/FileDir;->refreshFileInfo(Landroid/taobao/filecache/FileInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 570
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 575
    :cond_6
    return-void
.end method

.method private refreshFileInfo(Landroid/taobao/filecache/FileInfo;)V
    .locals 9
    .parameter "fileInfo"

    .prologue
    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 602
    .local v3, time:J
    invoke-interface {p1}, Landroid/taobao/filecache/FileInfo;->composeFileInfoStr()[B

    move-result-object v2

    .line 603
    .local v2, infoByte:[B
    if-nez v2, :cond_0

    .line 633
    :goto_0
    return-void

    .line 605
    :cond_0
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 607
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 608
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 614
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 616
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 617
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 618
    :cond_1
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-interface {p1}, Landroid/taobao/filecache/FileInfo;->getFileInfoPos()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    const-string v5, "FileDir"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshFileInfo time cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :catch_0
    move-exception v1

    .line 621
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshTimeTicker(J)V
    .locals 5
    .parameter "currentTime"

    .prologue
    .line 580
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 583
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 585
    iget-object v2, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    iget-object v2, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 587
    :cond_0
    iget-object v2, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clear()Z
    .locals 7

    .prologue
    .line 484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/taobao/filecache/FileDir;->mainThreadId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 485
    const-string v3, "FileDir"

    const-string v4, "clear files in main thread"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-boolean v3, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-eqz v3, :cond_1

    .line 489
    const/4 v2, 0x1

    .line 491
    .local v2, ret:Z
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    :try_start_0
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v4

    new-array v4, v4, [Landroid/taobao/filecache/FileInfo;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/filecache/FileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    .local v0, deleteFiles:[Landroid/taobao/filecache/FileInfo;
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 498
    if-eqz v0, :cond_2

    .line 500
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 501
    aget-object v3, v0, v1

    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/taobao/filecache/FileDir;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v0           #deleteFiles:[Landroid/taobao/filecache/FileInfo;
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 505
    .end local v2           #ret:Z
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 5
    .parameter "fileName"

    .prologue
    .line 417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/taobao/filecache/FileDir;->mainThreadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 418
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file in main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-boolean v1, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-eqz v1, :cond_1

    .line 425
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/taobao/filecache/FileDir;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    .line 432
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNoSpaceClear(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/taobao/filecache/FileDir;->isNoSpaceClear:Z

    .line 60
    return-void
.end method

.method public filtrFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "fileNameFilter"

    .prologue
    .line 213
    iget-boolean v5, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-eqz v5, :cond_3

    .line 214
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 217
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, fileNames:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 220
    aget-object v4, v0, v1

    check-cast v4, Ljava/lang/String;

    .line 221
    .local v4, tmp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-le v5, v6, :cond_0

    .line 222
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v4           #tmp:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 229
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 230
    .local v3, ret:[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v6, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    .end local v0           #fileNames:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #ret:[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 234
    .restart local v0       #fileNames:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    .end local v0           #fileNames:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 234
    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->fInfoLock:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->fInfoLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 89
    :cond_0
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_2

    .line 97
    :try_start_1
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :cond_2
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileInfo(Ljava/lang/String;)Landroid/taobao/filecache/FileInfo;
    .locals 5
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-boolean v3, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 246
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v0, file:Ljava/io/File;
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/filecache/FileInfo;

    .line 252
    .local v1, fileInfo:Landroid/taobao/filecache/FileInfo;
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileInfo:Landroid/taobao/filecache/FileInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 256
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/filecache/FileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public hidenMediaFile()V
    .locals 4

    .prologue
    .line 201
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v1, nomedia:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z
    .locals 10
    .parameter
    .parameter "creator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Landroid/taobao/filecache/FileInfo;",
            ">;",
            "Landroid/taobao/filecache/FileInfoCreator;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/taobao/filecache/FileInfo;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-nez v7, :cond_8

    .line 113
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    sget-object v8, Landroid/taobao/filecache/FileDir;->FILEINFO:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v2, infoFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :cond_0
    :try_start_2
    iget-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    if-nez v7, :cond_1

    .line 131
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    .line 132
    :cond_1
    iget-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    if-nez v7, :cond_2

    .line 133
    iget-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 134
    :cond_2
    iget-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoLock:Ljava/nio/channels/FileLock;

    .line 135
    iget-object v7, p0, Landroid/taobao/filecache/FileDir;->fInfoLock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_4

    .line 180
    .end local v2           #infoFile:Ljava/io/File;
    :cond_3
    :goto_0
    monitor-exit p0

    return v5

    .line 120
    .restart local v2       #infoFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 122
    .local v1, e1:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #infoFile:Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 137
    .restart local v2       #infoFile:Ljava/io/File;
    :cond_4
    :try_start_4
    const-string v7, "FileDir"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lock success process is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 144
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 147
    .local v3, time:J
    if-eqz p1, :cond_5

    .line 148
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v8, 0x64

    invoke-direct {v7, v8, p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 151
    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    .line 154
    if-nez p2, :cond_6

    .line 155
    new-instance v7, Landroid/taobao/filecache/BaseFICreator;

    invoke-direct {v7}, Landroid/taobao/filecache/BaseFICreator;-><init>()V

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    .line 160
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/taobao/filecache/FileDir;->collectFiles(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 172
    iget-object v6, p0, Landroid/taobao/filecache/FileDir;->fInfoLock:Ljava/nio/channels/FileLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    .line 174
    :try_start_6
    iget-object v6, p0, Landroid/taobao/filecache/FileDir;->fInfoLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #time:J
    :catch_2
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #time:J
    :cond_5
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v7, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_1

    .line 157
    :cond_6
    iput-object p2, p0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    goto :goto_2

    .line 164
    :cond_7
    const-string v5, "FileDir"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init time cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v5, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/taobao/filecache/FileDir;->isInit:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2           #infoFile:Ljava/io/File;
    .end local v3           #time:J
    :cond_8
    move v5, v6

    .line 168
    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-boolean v1, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSdcard()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/taobao/filecache/FileDir;->sdcard:Z

    return v0
.end method

.method public read(Ljava/lang/String;)[B
    .locals 13
    .parameter "fileName"

    .prologue
    .line 273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v4, p0, Landroid/taobao/filecache/FileDir;->mainThreadId:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 274
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read file in main thread: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-boolean v1, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, fileInfo:Landroid/taobao/filecache/FileInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 286
    .local v9, time:J
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    invoke-direct {v7, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v7, file:Ljava/io/File;
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/taobao/filecache/FileInfo;

    move-object v3, v0

    .line 292
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-wide v5, p0, Landroid/taobao/filecache/FileDir;->currentTime:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v5

    iput-wide v11, p0, Landroid/taobao/filecache/FileDir;->currentTime:J

    invoke-interface/range {v1 .. v6}, Landroid/taobao/filecache/FileInfoCreator;->onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;

    move-result-object v3

    .line 295
    iget-wide v1, p0, Landroid/taobao/filecache/FileDir;->currentTime:J

    invoke-direct {p0, v1, v2}, Landroid/taobao/filecache/FileDir;->refreshTimeTicker(J)V

    .line 296
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 298
    invoke-direct {p0, v3}, Landroid/taobao/filecache/FileDir;->refreshFileInfo(Landroid/taobao/filecache/FileInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_1
    iget-object v1, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    const/4 v8, 0x0

    .line 305
    .local v8, ret:[B
    if-eqz v3, :cond_2

    .line 306
    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/filecache/FileAccesser;->read(Ljava/lang/String;)[B

    move-result-object v8

    .line 308
    :cond_2
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read time cost:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v3           #fileInfo:Landroid/taobao/filecache/FileInfo;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #ret:[B
    .end local v9           #time:J
    :goto_0
    return-object v8

    .line 301
    .restart local v3       #fileInfo:Landroid/taobao/filecache/FileInfo;
    .restart local v9       #time:J
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 311
    .end local v3           #fileInfo:Landroid/taobao/filecache/FileInfo;
    .end local v9           #time:J
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public setCapacity(I)V
    .locals 1
    .parameter "maxCapacity"

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput p1, p0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    .line 72
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 73
    iget-object v0, p0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0, v0}, Landroid/taobao/filecache/FileDir;->onFileOverflow(Ljava/util/concurrent/PriorityBlockingQueue;)V

    goto :goto_0
.end method

.method public setListener(Landroid/taobao/filecache/FileDirListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 184
    iput-object p1, p0, Landroid/taobao/filecache/FileDir;->listener:Landroid/taobao/filecache/FileDirListener;

    .line 185
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .locals 16
    .parameter "fileName"
    .parameter "data"

    .prologue
    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/taobao/filecache/FileDir;->mainThreadId:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 322
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write file in main thread: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/filecache/FileDir;->isInit:Z

    if-eqz v1, :cond_7

    .line 327
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->baseDirPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v12, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 330
    .local v14, time:J
    const/4 v13, 0x0

    .line 332
    .local v13, ret:Z
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/taobao/filecache/FileAccesser;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Landroid/taobao/filecache/NotEnoughSpace; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 346
    :cond_1
    :goto_0
    if-eqz v13, :cond_7

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    const/4 v3, 0x0

    .line 351
    .local v3, fileInfo:Landroid/taobao/filecache/FileInfo;
    :try_start_1
    const-string v1, "FileDir"

    const-string v2, "write success"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    const-string v1, "FileDir"

    const-string v2, "writed file exist"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/taobao/filecache/FileInfo;

    move-object v3, v0

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    move-object/from16 v0, p0

    iput-wide v7, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    invoke-interface/range {v1 .. v6}, Landroid/taobao/filecache/FileInfoCreator;->onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;

    move-result-object v3

    .line 361
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/taobao/filecache/FileDir;->refreshTimeTicker(J)V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/taobao/filecache/FileDir;->refreshFileInfo(Landroid/taobao/filecache/FileInfo;)V

    .line 366
    const/4 v3, 0x0

    .line 367
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write time cost:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    const/4 v1, 0x1

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    if-lt v2, v4, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/taobao/filecache/FileDir;->onFileOverflow(Ljava/util/concurrent/PriorityBlockingQueue;)V

    .line 410
    .end local v3           #fileInfo:Landroid/taobao/filecache/FileInfo;
    .end local v12           #file:Ljava/io/File;
    .end local v13           #ret:Z
    .end local v14           #time:J
    :cond_2
    :goto_1
    return v1

    .line 333
    .restart local v12       #file:Ljava/io/File;
    .restart local v13       #ret:Z
    .restart local v14       #time:J
    :catch_0
    move-exception v10

    .line 335
    .local v10, e:Landroid/taobao/filecache/NotEnoughSpace;
    invoke-virtual {v10}, Landroid/taobao/filecache/NotEnoughSpace;->printStackTrace()V

    .line 336
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/filecache/FileDir;->isNoSpaceClear:Z

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/filecache/FileDir;->clear()Z

    .line 339
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/taobao/filecache/FileAccesser;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    :try_end_2
    .catch Landroid/taobao/filecache/NotEnoughSpace; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    goto/16 :goto_0

    .line 340
    :catch_1
    move-exception v11

    .line 342
    .local v11, e1:Landroid/taobao/filecache/NotEnoughSpace;
    invoke-virtual {v11}, Landroid/taobao/filecache/NotEnoughSpace;->printStackTrace()V

    goto/16 :goto_0

    .line 372
    .end local v10           #e:Landroid/taobao/filecache/NotEnoughSpace;
    .end local v11           #e1:Landroid/taobao/filecache/NotEnoughSpace;
    .restart local v3       #fileInfo:Landroid/taobao/filecache/FileInfo;
    :cond_3
    :try_start_3
    const-string v1, "FileDir"

    const-string v2, "writed file do not exist"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/taobao/filecache/FileDir;->creator:Landroid/taobao/filecache/FileInfoCreator;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v8

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    invoke-interface/range {v4 .. v9}, Landroid/taobao/filecache/FileInfoCreator;->onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;

    move-result-object v3

    .line 375
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/taobao/filecache/FileDir;->currentTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/taobao/filecache/FileDir;->refreshTimeTicker(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 380
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-interface {v3, v1, v2}, Landroid/taobao/filecache/FileInfo;->setFileInfoPos(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 387
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->storedFile:Ljava/util/HashMap;

    invoke-interface {v3}, Landroid/taobao/filecache/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    if-eqz v3, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 390
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/taobao/filecache/FileDir;->refreshFileInfo(Landroid/taobao/filecache/FileInfo;)V

    .line 392
    const-string v1, "FileDir"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write time cost:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    const/4 v1, 0x1

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    if-lt v2, v4, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/taobao/filecache/FileDir;->onFileOverflow(Ljava/util/concurrent/PriorityBlockingQueue;)V

    goto/16 :goto_1

    .line 381
    :catch_2
    move-exception v10

    .line 383
    .local v10, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 398
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/taobao/filecache/FileDir;->maxCapacity:I

    if-lt v2, v4, :cond_6

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/taobao/filecache/FileDir;->sortedStoredFile:Ljava/util/concurrent/PriorityBlockingQueue;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/taobao/filecache/FileDir;->onFileOverflow(Ljava/util/concurrent/PriorityBlockingQueue;)V

    :cond_6
    throw v1

    .line 410
    .end local v3           #fileInfo:Landroid/taobao/filecache/FileInfo;
    .end local v12           #file:Ljava/io/File;
    .end local v13           #ret:Z
    .end local v14           #time:J
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
