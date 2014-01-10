.class public Lcom/taobao/statistic/module/h/i;
.super Ljava/lang/Object;
.source "TraceItem.java"


# instance fields
.field iq:Ljava/lang/String;

.field ir:Ljava/lang/String;

.field is:Ljava/lang/String;

.field it:Ljava/lang/String;

.field iu:Ljava/lang/String;

.field oU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/h/i;->iq:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/h/i;->ir:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/h/i;->is:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/h/i;->it:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/h/i;->iu:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/h/i;->oU:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/taobao/statistic/module/h/i;->iq:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/taobao/statistic/module/h/i;->ir:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/taobao/statistic/module/h/i;->is:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/taobao/statistic/module/h/i;->it:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/taobao/statistic/module/h/i;->iu:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/taobao/statistic/module/h/i;->oU:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public dT()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->ir:Ljava/lang/String;

    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->ir:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public dU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->oU:Ljava/lang/String;

    return-object v0
.end method

.method public getArg1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->is:Ljava/lang/String;

    return-object v0
.end method

.method public getArg2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->it:Ljava/lang/String;

    return-object v0
.end method

.method public getArg3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->iu:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/taobao/statistic/module/h/i;->iq:Ljava/lang/String;

    return-object v0
.end method
