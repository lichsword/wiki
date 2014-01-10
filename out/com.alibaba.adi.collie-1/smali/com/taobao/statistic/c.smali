.class Lcom/taobao/statistic/c;
.super Ljava/lang/Object;
.source "TBSEngine.java"


# static fields
.field private static iH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static iJ:Ljava/util/regex/Pattern;


# instance fields
.field private iE:Z

.field private iF:Lcom/taobao/statistic/core/i;

.field private iG:Landroid/content/Context;

.field private iI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    .line 25
    const-string v0, "[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/statistic/c;->iJ:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "resourceIdentifier"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/c;->iE:Z

    .line 21
    iput-object v1, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    .line 22
    iput-object v1, p0, Lcom/taobao/statistic/c;->iG:Landroid/content/Context;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter "environment"

    .prologue
    .line 124
    new-instance v0, Lcom/taobao/statistic/core/i;

    iget-object v1, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/taobao/statistic/core/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    .line 125
    iget-object v0, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->create()V

    .line 126
    return-void
.end method

.method public static m(Ljava/lang/String;)Lcom/taobao/statistic/c;
    .locals 3
    .parameter "resourceIdentifier"

    .prologue
    .line 32
    sget-object v1, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "ResourceIdentifier already exists"

    const-string v2, "Check that there is no normal exit Usertrack (uninit) or multiple calls SetEnvironment methods(resourceIdentifier not changed)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 36
    :cond_0
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Lcom/taobao/statistic/c;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    sget-object v1, Lcom/taobao/statistic/c;->iJ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 40
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    sget-object v1, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/taobao/statistic/c;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_2
    const-string v1, "ResourceIdentifier Error"

    const-string v2, "Resource identifier can only be letters."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static n(Ljava/lang/String;)V
    .locals 1
    .parameter "resourceIdentifier"

    .prologue
    .line 53
    sget-object v0, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method aF()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 59
    iget-boolean v4, p0, Lcom/taobao/statistic/c;->iE:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/taobao/statistic/c;->iG:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v4, :cond_2

    .line 61
    iget-object v4, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bA()V

    .line 62
    iget-object v4, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bB()V

    .line 63
    iget-object v4, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/q;->dg()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    new-instance v4, Lcom/taobao/statistic/core/b/a/d;

    iget-object v5, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    new-instance v6, Lcom/taobao/statistic/c$1;

    invoke-direct {v6, p0}, Lcom/taobao/statistic/c$1;-><init>(Lcom/taobao/statistic/c;)V

    invoke-direct {v4, v5, v6}, Lcom/taobao/statistic/core/b/a/d;-><init>(Lcom/taobao/statistic/core/i;Lcom/taobao/statistic/TBS$OnInitFinishListener;)V

    invoke-virtual {v4}, Lcom/taobao/statistic/core/b/a/d;->execute()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    iget-object v3, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->init()V

    .line 96
    iput-boolean v2, p0, Lcom/taobao/statistic/c;->iE:Z

    .line 97
    iget-object v3, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 99
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 100
    const-string v3, "APP_STATUS"

    sget-object v4, Lcom/taobao/statistic/APPSTATUS;->RUNNING:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v4}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, startCount:I
    const-string v3, "D_START"

    invoke-virtual {v0, v3}, Lcom/taobao/statistic/core/a/c;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    const-string v3, "D_START"

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/taobao/statistic/core/a/c;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 120
    .end local v0           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v1           #startCount:I
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->destroy()V

    .line 111
    iput-object v7, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    .line 112
    iput-boolean v3, p0, Lcom/taobao/statistic/c;->iE:Z

    .line 113
    iput-object v7, p0, Lcom/taobao/statistic/c;->iG:Landroid/content/Context;

    :cond_2
    :goto_1
    move v2, v3

    .line 120
    goto :goto_0

    .line 116
    :cond_3
    const-string v4, "TBSEngine(init)"

    const-string v5, "ResultCode(init):-1"

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method aG()Lcom/taobao/statistic/core/i;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/taobao/statistic/c;->iE:Z

    return v0
.end method

.method setEnvironment(Landroid/content/Context;)V
    .locals 2
    .parameter "environment"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/taobao/statistic/c;->iG:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 163
    if-nez p1, :cond_1

    .line 164
    const-string v0, "SetEnvironment"

    const-string v1, "TBSEngine:Fail(context is null)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/taobao/statistic/c;->iG:Landroid/content/Context;

    .line 168
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/taobao/statistic/c;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cW()V

    .line 131
    iget-object v2, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bD()V

    .line 132
    new-instance v2, Lcom/taobao/statistic/core/b/b/h;

    iget-object v3, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-direct {v2, v3}, Lcom/taobao/statistic/core/b/b/h;-><init>(Lcom/taobao/statistic/core/i;)V

    invoke-virtual {v2}, Lcom/taobao/statistic/core/b/b/h;->execute()Z

    .line 133
    iget-object v2, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 135
    .local v1, ppc:Lcom/taobao/statistic/core/a/c;
    const-string v0, ""

    .line 136
    .local v0, oldStatus:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 137
    const-string v2, "APP_STATUS"

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    sget-object v2, Lcom/taobao/statistic/APPSTATUS;->CRASHED:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v2}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/taobao/statistic/APPSTATUS;->INIT_USERTRACK_SDK_FAIL:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v2}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    if-eqz v1, :cond_1

    .line 143
    const-string v2, "APP_STATUS"

    sget-object v3, Lcom/taobao/statistic/APPSTATUS;->STOPPED:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v3}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->uninit()V

    .line 148
    iget-object v2, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->destroy()V

    .line 150
    .end local v0           #oldStatus:Ljava/lang/String;
    .end local v1           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_2
    sget-object v2, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    sget-object v2, Lcom/taobao/statistic/c;->iH:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    :cond_3
    iput-object v4, p0, Lcom/taobao/statistic/c;->iG:Landroid/content/Context;

    .line 154
    iput-object v4, p0, Lcom/taobao/statistic/c;->iF:Lcom/taobao/statistic/core/i;

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/taobao/statistic/c;->iE:Z

    .line 156
    iget-object v2, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/statistic/c;->n(Ljava/lang/String;)V

    .line 157
    iput-object v4, p0, Lcom/taobao/statistic/c;->iI:Ljava/lang/String;

    .line 159
    return-void
.end method
