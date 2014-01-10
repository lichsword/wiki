.class public Lcom/taobao/statistic/core/o;
.super Lcom/taobao/statistic/module/a/a;
.source "Tracer.java"


# static fields
.field private static final mE:I


# instance fields
.field private mF:Ljava/lang/String;

.field private mG:J

.field private mH:J

.field private mI:J

.field private mJ:Lcom/taobao/statistic/module/g/b;

.field private mK:Lcom/taobao/statistic/module/g/a;

.field private mL:Ljava/lang/reflect/Method;

.field private mM:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "securityMatrixFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/taobao/statistic/core/o;->mE:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 3
    .parameter "aRuntime"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/a/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/o;->mF:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/statistic/core/o;->mG:J

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/statistic/core/o;->mH:J

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/statistic/core/o;->mI:J

    .line 44
    iput-object v2, p0, Lcom/taobao/statistic/core/o;->mJ:Lcom/taobao/statistic/module/g/b;

    .line 45
    iput-object v2, p0, Lcom/taobao/statistic/core/o;->mK:Lcom/taobao/statistic/module/g/a;

    .line 46
    iput-object v2, p0, Lcom/taobao/statistic/core/o;->mL:Ljava/lang/reflect/Method;

    .line 51
    invoke-direct {p0}, Lcom/taobao/statistic/core/o;->cE()V

    .line 52
    return-void
.end method

.method private G(Ljava/lang/String;)V
    .locals 7
    .parameter "strTrace"

    .prologue
    .line 113
    :try_start_0
    iget-object v4, p0, Lcom/taobao/statistic/core/o;->mL:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 114
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 115
    .local v1, msg:Landroid/os/Message;
    sget v4, Lcom/taobao/statistic/core/o;->mE:I

    iput v4, v1, Landroid/os/Message;->what:I

    .line 116
    iget-object v4, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/l;->ct()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, sessionStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, utdata:Ljava/lang/String;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v4, p0, Lcom/taobao/statistic/core/o;->mM:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #sessionStr:Ljava/lang/String;
    .end local v3           #utdata:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "sendTraceToSecurityMatrix"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private H(Ljava/lang/String;)[B
    .locals 3
    .parameter "aTraceContent"

    .prologue
    .line 375
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, b_traceContent:[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 384
    .end local v0           #b_traceContent:[B
    :goto_0
    return-object v0

    .line 379
    .restart local v0       #b_traceContent:[B
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0           #b_traceContent:[B
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/statistic/core/o;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/taobao/statistic/core/o;->mM:Landroid/os/Handler;

    return-object p1
.end method

.method private varargs a(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "index"
    .parameter "page"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "args"

    .prologue
    .line 159
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 160
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    if-eqz p8, :cond_6

    array-length v3, p8

    if-lez v3, :cond_6

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p8

    if-ge v0, v3, :cond_1

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    aget-object v3, p8, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "dep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 176
    .end local v0           #i:I
    :goto_1
    iget-wide v3, p0, Lcom/taobao/statistic/core/o;->mI:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 179
    .local v1, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v1, :cond_2

    .line 180
    const-string v3, "R_IDX"

    invoke-virtual {v1, v3}, Lcom/taobao/statistic/core/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/taobao/statistic/core/o;->mI:J

    .line 183
    .end local v1           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_2
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/statistic/core/o;->mI:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 184
    iget-wide v3, p0, Lcom/taobao/statistic/core/o;->mI:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/taobao/statistic/core/o;->mI:J

    .line 185
    iget-wide v3, p0, Lcom/taobao/statistic/core/o;->mI:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 188
    .restart local v1       #ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v1, :cond_3

    .line 189
    const-string v3, "R_IDX"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 190
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 193
    .end local v1           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/taobao/statistic/core/o;->mH:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 194
    iget-object v3, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 196
    .restart local v1       #ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v1, :cond_4

    .line 197
    const-string v3, "R_IDX"

    iget-wide v4, p0, Lcom/taobao/statistic/core/o;->mI:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 198
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 200
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/taobao/statistic/core/o;->mH:J

    .line 202
    .end local v1           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 174
    :cond_6
    const-string v3, "dep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/taobao/statistic/core/o;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/statistic/core/o;->m(Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a(Lcom/taobao/statistic/module/g/c;Ljava/util/Date;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "pResult"
    .parameter "opTime"
    .parameter "index"
    .parameter "page"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 221
    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v3 .. v11}, Lcom/taobao/statistic/core/o;->a(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 223
    .local v16, simpleFormatString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/taobao/statistic/core/o;->f(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, strTrace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/taobao/statistic/core/o;->mG:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 225
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/taobao/statistic/core/o;->mG:J

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/taobao/statistic/core/o;->mG:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/taobao/statistic/core/o;->mG:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->mF:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cw()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    const/4 v3, 0x1

    const-string v4, "TraceContent(X)"

    invoke-static/range {v17 .. v17}, Lcom/taobao/statistic/module/h/j;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 236
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/taobao/statistic/core/o;->mG:J

    .line 294
    :cond_1
    :goto_1
    return-void

    .line 234
    :cond_2
    const/4 v3, 0x1

    const-string v4, "TraceContent(X)"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/statistic/module/g/c;->dR()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_4

    .line 243
    const-string v3, "%s,_cp=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/statistic/module/g/c;->dR()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 246
    :cond_4
    invoke-static/range {v17 .. v17}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "||"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/taobao/statistic/core/o;->b(ILjava/lang/String;)[B

    move-result-object v13

    .line 248
    .local v13, b_traceContent:[B
    if-eqz v13, :cond_7

    .line 250
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cu()Lcom/taobao/statistic/UTEventDispatchListener;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v3, 0x5208

    move/from16 v0, p6

    if-le v0, v3, :cond_5

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/l;->ct()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, lFullTrace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cu()Lcom/taobao/statistic/UTEventDispatchListener;

    move-result-object v3

    invoke-static {v14}, Lcom/taobao/statistic/UTEventObj;->initWithString(Ljava/lang/String;)Lcom/taobao/statistic/UTEventObj;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/taobao/statistic/UTEventDispatchListener;->onEventDispatch(Lcom/taobao/statistic/UTEventObj;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    .end local v14           #lFullTrace:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/o;->G(Ljava/lang/String;)V

    .line 270
    const/4 v15, 0x0

    .line 271
    .local v15, lResult:Lcom/taobao/statistic/module/g/c;
    const-string v12, "TraceContent(\u221a)"

    .line 272
    .local v12, Tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->mK:Lcom/taobao/statistic/module/g/a;

    if-eqz v3, :cond_6

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->mK:Lcom/taobao/statistic/module/g/a;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/taobao/statistic/module/g/a;->U(I)Lcom/taobao/statistic/module/g/c;

    move-result-object v15

    .line 276
    :cond_6
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/taobao/statistic/module/g/c;->dQ()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bH()Lcom/taobao/statistic/core/h;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/taobao/statistic/core/h;->e([B)V

    .line 278
    const-string v12, "TraceContent(Delay)"

    .line 283
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cw()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 284
    const/4 v3, 0x1

    invoke-static/range {v17 .. v17}, Lcom/taobao/statistic/module/h/j;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    .end local v12           #Tag:Ljava/lang/String;
    .end local v13           #b_traceContent:[B
    .end local v15           #lResult:Lcom/taobao/statistic/module/g/c;
    :cond_7
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/statistic/core/o;->mF:Ljava/lang/String;

    .line 293
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/taobao/statistic/core/o;->mG:J

    goto/16 :goto_1

    .line 280
    .restart local v12       #Tag:Ljava/lang/String;
    .restart local v13       #b_traceContent:[B
    .restart local v15       #lResult:Lcom/taobao/statistic/module/g/c;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bH()Lcom/taobao/statistic/core/h;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/taobao/statistic/core/h;->d([B)V

    goto :goto_3

    .line 287
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-static {v3, v12, v0}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 261
    .end local v12           #Tag:Ljava/lang/String;
    .end local v15           #lResult:Lcom/taobao/statistic/module/g/c;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private b(ILjava/lang/String;)[B
    .locals 1
    .parameter "aEventID"
    .parameter "aTraceContent"

    .prologue
    .line 354
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0, p2}, Lcom/taobao/statistic/core/o;->H(Ljava/lang/String;)[B

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 361
    :cond_0
    invoke-direct {p0, p2}, Lcom/taobao/statistic/core/o;->H(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cE()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 75
    :try_start_0
    const-string v2, "com.ut.secbody.SecurityMatrix"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "dataReceive"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/statistic/core/o;->mL:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    iget-object v2, p0, Lcom/taobao/statistic/core/o;->mL:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/taobao/statistic/core/o$1;

    invoke-direct {v3, p0}, Lcom/taobao/statistic/core/o$1;-><init>(Lcom/taobao/statistic/core/o;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 98
    :cond_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "initSecurityMatrix"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic cF()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/taobao/statistic/core/o;->mE:I

    return v0
.end method

.method private f(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "opTime"
    .parameter "simpleFormatString"

    .prologue
    .line 206
    iget-object v5, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/i;->bR()Lorg/usertrack/android/utils/h;

    move-result-object v0

    .line 207
    .local v0, lNetworkUtils:Lorg/usertrack/android/utils/h;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lorg/usertrack/android/utils/h;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, sTime:Ljava/lang/String;
    invoke-virtual {v0, p1}, Lorg/usertrack/android/utils/h;->c(Ljava/util/Date;)J

    move-result-wide v1

    .line 210
    .local v1, lTime:J
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0xc8

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 211
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    .end local v1           #lTime:J
    .end local v3           #sTime:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_0
    return-object v5

    :cond_0
    const-string v5, ""

    goto :goto_0
.end method

.method private m(Ljava/lang/Object;)V
    .locals 6
    .parameter "utdata"

    .prologue
    const/4 v5, 0x1

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->mL:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->mL:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "writeTraceToSecurityMatrix"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs declared-synchronized a(Ljava/util/Date;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 13
    .parameter "opTime"
    .parameter "index"
    .parameter "page"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cO()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, lResult:Lcom/taobao/statistic/module/g/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->mJ:Lcom/taobao/statistic/module/g/b;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->mJ:Lcom/taobao/statistic/module/g/b;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/taobao/statistic/module/g/b;->U(I)Lcom/taobao/statistic/module/g/c;

    move-result-object v2

    .line 321
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/taobao/statistic/module/g/c;->dQ()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 322
    invoke-direct/range {v1 .. v11}, Lcom/taobao/statistic/core/o;->a(Lcom/taobao/statistic/module/g/c;Ljava/util/Date;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->dn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->do()Ljava/lang/String;

    move-result-object v12

    .line 329
    .local v12, lUrl:Ljava/lang/String;
    invoke-static {v12}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/taobao/statistic/core/q;->N(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/taobao/statistic/core/g;->M(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v12           #lUrl:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    .line 341
    .end local v2           #lResult:Lcom/taobao/statistic/module/g/c;
    :goto_0
    monitor-exit p0

    return v1

    .line 337
    .restart local v2       #lResult:Lcom/taobao/statistic/module/g/c;
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    const-string v3, "doTrace"

    const-string v4, "(%s) Skip by EventStrategier"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .end local v2           #lResult:Lcom/taobao/statistic/module/g/c;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public aC()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v0, lNeedConfigurations:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "B01N2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "configurationName"
    .parameter "configuration"

    .prologue
    .line 393
    const/4 v5, 0x0

    .line 395
    .local v5, jConf:Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v5           #jConf:Lorg/json/JSONObject;
    .local v6, jConf:Lorg/json/JSONObject;
    move-object v5, v6

    .line 398
    .end local v6           #jConf:Lorg/json/JSONObject;
    .restart local v5       #jConf:Lorg/json/JSONObject;
    :goto_0
    const/4 v7, 0x0

    .line 400
    .local v7, jContent:Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    :try_start_1
    const-string v13, "content"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 401
    const-string v13, "content"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    .line 406
    :cond_0
    :goto_1
    const-string v13, "B01N2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 407
    if-eqz v7, :cond_3

    .line 408
    new-instance v11, Lcom/taobao/statistic/module/g/b;

    invoke-direct {v11}, Lcom/taobao/statistic/module/g/b;-><init>()V

    .line 409
    .local v11, lSimpleStrategier:Lcom/taobao/statistic/module/g/b;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_2

    .line 410
    const/4 v8, 0x0

    .line 412
    .local v8, jData:Lorg/json/JSONObject;
    :try_start_2
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 415
    :goto_3
    if-eqz v8, :cond_1

    const-string v13, "eid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 417
    :try_start_3
    const-string v13, "eid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 418
    .local v3, eventId:I
    const-string v13, "cp"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 419
    .local v1, cp:I
    if-ltz v1, :cond_1

    const/16 v13, 0x64

    if-gt v1, v13, :cond_1

    .line 420
    invoke-virtual {v11, v3, v1}, Lcom/taobao/statistic/module/g/b;->k(II)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 409
    .end local v1           #cp:I
    .end local v3           #eventId:I
    :cond_1
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 427
    .end local v8           #jData:Lorg/json/JSONObject;
    :cond_2
    iput-object v11, p0, Lcom/taobao/statistic/core/o;->mJ:Lcom/taobao/statistic/module/g/b;

    .line 446
    .end local v4           #i:I
    .end local v11           #lSimpleStrategier:Lcom/taobao/statistic/module/g/b;
    :cond_3
    :goto_5
    return-void

    .line 429
    :cond_4
    const-string v13, "B01N5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 430
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 431
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 432
    .local v9, lEventIDS:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_5

    .line 434
    :try_start_4
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 435
    .local v12, lV:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 432
    .end local v12           #lV:I
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 436
    :catch_0
    move-exception v2

    .line 437
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 440
    .end local v2           #e:Lorg/json/JSONException;
    :cond_5
    new-instance v10, Lcom/taobao/statistic/module/g/a;

    invoke-direct {v10}, Lcom/taobao/statistic/module/g/a;-><init>()V

    .line 441
    .local v10, lEventStrategier:Lcom/taobao/statistic/module/g/a;
    invoke-virtual {v10, v9}, Lcom/taobao/statistic/module/g/a;->c(Ljava/util/List;)V

    .line 442
    iput-object v10, p0, Lcom/taobao/statistic/core/o;->mK:Lcom/taobao/statistic/module/g/a;

    .line 443
    iget-object v13, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v13}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/taobao/statistic/core/q;->o(Z)V

    goto :goto_5

    .line 413
    .end local v9           #lEventIDS:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10           #lEventStrategier:Lcom/taobao/statistic/module/g/a;
    .restart local v8       #jData:Lorg/json/JSONObject;
    .restart local v11       #lSimpleStrategier:Lcom/taobao/statistic/module/g/b;
    :catch_1
    move-exception v13

    goto :goto_3

    .line 423
    :catch_2
    move-exception v13

    goto :goto_4

    .line 403
    .end local v4           #i:I
    .end local v8           #jData:Lorg/json/JSONObject;
    .end local v11           #lSimpleStrategier:Lcom/taobao/statistic/module/g/b;
    :catch_3
    move-exception v13

    goto/16 :goto_1

    .line 396
    .end local v7           #jContent:Lorg/json/JSONArray;
    :catch_4
    move-exception v13

    goto/16 :goto_0
.end method

.method public cD()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v1

    const-string v2, "B01N2"

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/a/b;->T(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    .local v0, lLocalBusiness:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 59
    const-string v1, "B01N2"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/taobao/statistic/core/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v1

    const-string v2, "B01N5"

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/a/b;->T(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    const-string v1, "B01N5"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/taobao/statistic/core/o;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #lLocalBusiness:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/taobao/statistic/core/o;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 131
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 132
    const-string v1, "R_IDX"

    iget-wide v2, p0, Lcom/taobao/statistic/core/o;->mI:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 133
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 135
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/statistic/core/o;->mH:J

    .line 136
    return-void
.end method
