.class public Lcom/taobao/statistic/core/i;
.super Ljava/lang/Object;
.source "Runtime.java"


# instance fields
.field private iG:Landroid/content/Context;

.field private jO:Ljava/lang/String;

.field private lA:Lcom/taobao/statistic/module/e/a;

.field private lB:Lcom/taobao/statistic/core/h;

.field private lC:Lcom/taobao/statistic/core/o;

.field private lD:Lcom/taobao/statistic/module/c/a;

.field private lE:Lorg/usertrack/android/library/d/c;

.field private lF:Z

.field private lG:Lcom/taobao/statistic/core/b;

.field private lH:Lcom/taobao/statistic/core/n;

.field private lI:Lcom/taobao/statistic/core/g;

.field private lJ:Lcom/taobao/statistic/module/data/a;

.field private lK:Lcom/taobao/statistic/module/f/a;

.field private lL:Lcom/taobao/statistic/IBuild;

.field private lM:Lcom/taobao/statistic/module/d/a;

.field private lN:Lcom/taobao/statistic/module/a/b;

.field private lO:Z

.field private lP:Lcom/taobao/statistic/core/p;

.field private lQ:Lcom/taobao/statistic/module/b/a;

.field private lR:Lcom/taobao/statistic/module/c/c;

.field private lt:Lcom/ut/device/b;

.field private lu:Lcom/taobao/statistic/core/q;

.field private lv:Lorg/usertrack/android/utils/h;

.field private lw:Lorg/usertrack/android/utils/f;

.field private lx:Lcom/taobao/statistic/core/m;

.field private ly:Lcom/taobao/statistic/core/c;

.field private lz:Lcom/taobao/statistic/core/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "environment"
    .parameter "resourceIdentifier"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->jO:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lt:Lcom/ut/device/b;

    .line 31
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    .line 32
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lv:Lorg/usertrack/android/utils/h;

    .line 33
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lw:Lorg/usertrack/android/utils/f;

    .line 34
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    .line 35
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    .line 36
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lz:Lcom/taobao/statistic/core/l;

    .line 37
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lA:Lcom/taobao/statistic/module/e/a;

    .line 38
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lB:Lcom/taobao/statistic/core/h;

    .line 39
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    .line 40
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    .line 41
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lE:Lorg/usertrack/android/library/d/c;

    .line 42
    iput-boolean v2, p0, Lcom/taobao/statistic/core/i;->lF:Z

    .line 43
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    .line 44
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lG:Lcom/taobao/statistic/core/b;

    .line 45
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lH:Lcom/taobao/statistic/core/n;

    .line 46
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lI:Lcom/taobao/statistic/core/g;

    .line 47
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lJ:Lcom/taobao/statistic/module/data/a;

    .line 48
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lK:Lcom/taobao/statistic/module/f/a;

    .line 49
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lL:Lcom/taobao/statistic/IBuild;

    .line 50
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lM:Lcom/taobao/statistic/module/d/a;

    .line 51
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    .line 52
    iput-boolean v2, p0, Lcom/taobao/statistic/core/i;->lO:Z

    .line 53
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lP:Lcom/taobao/statistic/core/p;

    .line 54
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lQ:Lcom/taobao/statistic/module/b/a;

    .line 55
    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lR:Lcom/taobao/statistic/module/c/c;

    .line 58
    iput-object p1, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/taobao/statistic/core/i;->jO:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private bC()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/a;)V

    .line 164
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    new-instance v1, Lcom/taobao/statistic/b/a/a;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/b/a/a;-><init>(Lcom/taobao/statistic/core/i;)V

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/a;)V

    .line 167
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    new-instance v1, Lcom/taobao/statistic/b/a/b;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/b/a/b;-><init>(Lcom/taobao/statistic/core/i;)V

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/a;)V

    .line 169
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    new-instance v1, Lcom/taobao/statistic/b/a/c;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/b/a/c;-><init>(Lcom/taobao/statistic/core/i;)V

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/a;)V

    .line 171
    return-void
.end method

.method private bE()Lcom/taobao/statistic/IBuild;
    .locals 4

    .prologue
    .line 246
    const-string v1, "com.taobao.statistic.Build"

    .line 247
    .local v1, buildClassPath:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 250
    .local v2, buildObject:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/IBuild;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2           #buildObject:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 254
    :catch_0
    move-exception v3

    .line 257
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :catch_1
    move-exception v3

    goto :goto_1

    .line 252
    :catch_2
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/usertrack/android/utils/h;)V
    .locals 0
    .parameter "networkTimeUtils"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/taobao/statistic/core/i;->lv:Lorg/usertrack/android/utils/h;

    .line 330
    return-void
.end method

.method public bA()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/taobao/statistic/core/i;->bE()Lcom/taobao/statistic/IBuild;

    .line 67
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lL:Lcom/taobao/statistic/IBuild;

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "BuildInfo"

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lL:Lcom/taobao/statistic/IBuild;

    invoke-interface {v1}, Lcom/taobao/statistic/IBuild;->getBuildInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/m;->cx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    const-string v1, "RequestUrl(Upload)"

    const-string v2, "http://adash.m.taobao.com/rest/ur"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_1
    return-void

    .line 71
    :cond_2
    const-string v0, "BuildInfo"

    const-string v1, "Version(1.3.6)"

    invoke-static {v2, v0, v1}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bB()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "TBSEngine"

    const-string v2, "TBSEngine:If you need to view the log, please call TBS.turnDebug() after SetEnvironment."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/statistic/core/k;->e(Landroid/content/Context;)Lcom/taobao/statistic/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/k;->bZ()Lcom/taobao/statistic/core/k$a;

    move-result-object v0

    .line 117
    .local v0, lsr:Lcom/taobao/statistic/core/k$a;
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Lcom/taobao/statistic/core/k$a;->cb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x1

    const-string v2, "TBSEngine"

    const-string v3, "SOManager validate and load success."

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/m;->cx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lM:Lcom/taobao/statistic/module/d/a;

    invoke-virtual {v1}, Lcom/taobao/statistic/module/d/a;->dC()V

    .line 137
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lM:Lcom/taobao/statistic/module/d/a;

    invoke-virtual {v1}, Lcom/taobao/statistic/module/d/a;->dB()V

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/statistic/a/a/a;->a(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lt:Lcom/ut/device/b;

    .line 141
    new-instance v1, Lcom/taobao/statistic/core/p;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/core/p;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lP:Lcom/taobao/statistic/core/p;

    .line 142
    new-instance v1, Lorg/usertrack/android/utils/f;

    invoke-direct {v1}, Lorg/usertrack/android/utils/f;-><init>()V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lw:Lorg/usertrack/android/utils/f;

    .line 144
    new-instance v1, Lcom/taobao/statistic/module/f/a;

    iget-object v2, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    iget-object v3, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-direct {v1, v2, v3}, Lcom/taobao/statistic/module/f/a;-><init>(Lcom/taobao/statistic/core/c;Lcom/taobao/statistic/core/q;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lK:Lcom/taobao/statistic/module/f/a;

    .line 145
    invoke-static {p0}, Lcom/taobao/statistic/module/data/a;->a(Lcom/taobao/statistic/core/i;)Lcom/taobao/statistic/module/data/a;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lJ:Lcom/taobao/statistic/module/data/a;

    .line 146
    new-instance v1, Lorg/usertrack/android/library/d/c;

    invoke-direct {v1}, Lorg/usertrack/android/library/d/c;-><init>()V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lE:Lorg/usertrack/android/library/d/c;

    .line 147
    new-instance v1, Lcom/taobao/statistic/module/e/a;

    invoke-direct {v1}, Lcom/taobao/statistic/module/e/a;-><init>()V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lA:Lcom/taobao/statistic/module/e/a;

    .line 148
    new-instance v1, Lcom/taobao/statistic/core/h;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/core/h;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lB:Lcom/taobao/statistic/core/h;

    .line 149
    new-instance v1, Lcom/taobao/statistic/core/o;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/core/o;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    .line 150
    new-instance v1, Lcom/taobao/statistic/core/l;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/core/l;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lz:Lcom/taobao/statistic/core/l;

    .line 152
    new-instance v1, Lcom/taobao/statistic/module/a/b;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/module/a/b;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v1, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    .line 154
    invoke-direct {p0}, Lcom/taobao/statistic/core/i;->bC()V

    .line 155
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/o;->cD()V

    .line 156
    return-void

    .line 122
    :cond_3
    const-string v1, "TBSEngine"

    const-string v2, "SOManager validate and load fail(Please copy armeabi,x86,mips folders to libs or copy so folder to assets)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v1, v3}, Lcom/taobao/statistic/core/q;->u(Z)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v1, v3}, Lcom/taobao/statistic/core/q;->u(Z)V

    goto/16 :goto_0
.end method

.method public bD()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    invoke-virtual {v0}, Lcom/taobao/statistic/module/a/b;->shutdown()V

    .line 202
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lJ:Lcom/taobao/statistic/module/data/a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lJ:Lcom/taobao/statistic/module/data/a;

    invoke-virtual {v0}, Lcom/taobao/statistic/module/data/a;->destroy()V

    .line 205
    :cond_0
    return-void
.end method

.method public bF()Lcom/taobao/statistic/core/q;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    return-object v0
.end method

.method public bG()Lcom/taobao/statistic/core/g;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lI:Lcom/taobao/statistic/core/g;

    return-object v0
.end method

.method public bH()Lcom/taobao/statistic/core/h;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lB:Lcom/taobao/statistic/core/h;

    return-object v0
.end method

.method public bI()Lcom/taobao/statistic/core/n;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lH:Lcom/taobao/statistic/core/n;

    return-object v0
.end method

.method public bJ()Lcom/taobao/statistic/module/c/a;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    return-object v0
.end method

.method public bK()Landroid/content/Context;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    return-object v0
.end method

.method public bL()Lorg/usertrack/android/library/d/c;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lE:Lorg/usertrack/android/library/d/c;

    return-object v0
.end method

.method public bM()Lcom/taobao/statistic/module/data/a;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lJ:Lcom/taobao/statistic/module/data/a;

    return-object v0
.end method

.method public bN()Lcom/ut/device/b;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lt:Lcom/ut/device/b;

    return-object v0
.end method

.method public bO()Lcom/taobao/statistic/core/m;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    return-object v0
.end method

.method public bP()Lcom/taobao/statistic/core/o;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    return-object v0
.end method

.method public bQ()Lcom/taobao/statistic/core/l;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lz:Lcom/taobao/statistic/core/l;

    return-object v0
.end method

.method public bR()Lorg/usertrack/android/utils/h;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lv:Lorg/usertrack/android/utils/h;

    return-object v0
.end method

.method public bS()Lcom/taobao/statistic/module/e/a;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lA:Lcom/taobao/statistic/module/e/a;

    return-object v0
.end method

.method public bT()Lcom/taobao/statistic/module/f/a;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lK:Lcom/taobao/statistic/module/f/a;

    return-object v0
.end method

.method public bU()Lcom/taobao/statistic/module/d/a;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lM:Lcom/taobao/statistic/module/d/a;

    return-object v0
.end method

.method public bV()Lcom/taobao/statistic/module/b/a;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lQ:Lcom/taobao/statistic/module/b/a;

    return-object v0
.end method

.method public bW()Lcom/taobao/statistic/core/c;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    return-object v0
.end method

.method public bX()Lcom/taobao/statistic/module/a/b;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    return-object v0
.end method

.method public bY()Lcom/taobao/statistic/core/p;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lP:Lcom/taobao/statistic/core/p;

    return-object v0
.end method

.method public create()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/taobao/statistic/core/b;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/core/b;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lG:Lcom/taobao/statistic/core/b;

    .line 87
    new-instance v0, Lcom/taobao/statistic/module/d/a;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/module/d/a;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lM:Lcom/taobao/statistic/module/d/a;

    .line 88
    invoke-direct {p0}, Lcom/taobao/statistic/core/i;->bE()Lcom/taobao/statistic/IBuild;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lL:Lcom/taobao/statistic/IBuild;

    .line 89
    new-instance v0, Lcom/taobao/statistic/core/q;

    invoke-direct {v0}, Lcom/taobao/statistic/core/q;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    .line 90
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".UTSystemConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->L(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->jO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->M(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/taobao/statistic/core/m;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/core/m;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    .line 94
    new-instance v0, Lcom/taobao/statistic/core/c;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/i;->jO:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/q;->dd()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/statistic/core/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    .line 97
    new-instance v0, Lcom/taobao/statistic/core/n;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/core/n;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lH:Lcom/taobao/statistic/core/n;

    .line 98
    new-instance v0, Lcom/taobao/statistic/module/c/a;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/module/c/a;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    .line 99
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lH:Lcom/taobao/statistic/core/n;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/c/a;->a(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 100
    new-instance v0, Lcom/taobao/statistic/core/g;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/core/g;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lI:Lcom/taobao/statistic/core/g;

    .line 101
    new-instance v0, Lcom/taobao/statistic/module/b/a;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/module/b/a;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lQ:Lcom/taobao/statistic/module/b/a;

    .line 102
    new-instance v0, Lcom/taobao/statistic/module/c/c;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/module/c/c;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lR:Lcom/taobao/statistic/module/c/c;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/i;->lF:Z

    .line 104
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lG:Lcom/taobao/statistic/core/b;

    .line 224
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lK:Lcom/taobao/statistic/module/f/a;

    .line 225
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lJ:Lcom/taobao/statistic/module/data/a;

    .line 226
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lI:Lcom/taobao/statistic/core/g;

    .line 227
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lz:Lcom/taobao/statistic/core/l;

    .line 228
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    .line 229
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lB:Lcom/taobao/statistic/core/h;

    .line 230
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lA:Lcom/taobao/statistic/module/e/a;

    .line 231
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lE:Lorg/usertrack/android/library/d/c;

    .line 232
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lt:Lcom/ut/device/b;

    .line 233
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    .line 234
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lH:Lcom/taobao/statistic/core/n;

    .line 235
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lw:Lorg/usertrack/android/utils/f;

    .line 236
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lN:Lcom/taobao/statistic/module/a/b;

    .line 237
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    .line 238
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lx:Lcom/taobao/statistic/core/m;

    .line 239
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    .line 240
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lL:Lcom/taobao/statistic/IBuild;

    .line 241
    iput-object v0, p0, Lcom/taobao/statistic/core/i;->lM:Lcom/taobao/statistic/module/d/a;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/i;->lF:Z

    .line 243
    return-void
.end method

.method public getExecProxy()Lcom/taobao/statistic/core/b;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lG:Lcom/taobao/statistic/core/b;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->dk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->dv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->iG:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/c/a;->init(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lD:Lcom/taobao/statistic/module/c/a;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lH:Lcom/taobao/statistic/core/n;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/c/a;->a(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lI:Lcom/taobao/statistic/core/g;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->di()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lI:Lcom/taobao/statistic/core/g;

    iget-object v1, p0, Lcom/taobao/statistic/core/i;->lu:Lcom/taobao/statistic/core/q;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->di()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/g;->c(J)V

    .line 193
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/i;->lO:Z

    .line 194
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->lC:Lcom/taobao/statistic/core/o;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/o;->destroy()V

    .line 212
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/i;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/c;->release()V

    .line 216
    return-void
.end method
