.class public Lcom/taobao/statistic/b/a/c;
.super Lcom/taobao/statistic/module/a/a;
.source "RealTimeDebuggingBusiness.java"


# static fields
.field private static iA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iC:Lcom/taobao/statistic/core/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/taobao/statistic/b/a/c$1;

    invoke-direct {v0}, Lcom/taobao/statistic/b/a/c$1;-><init>()V

    sput-object v0, Lcom/taobao/statistic/b/a/c;->iA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "aRuntime"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/a/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/b/a/c;->iC:Lcom/taobao/statistic/core/q;

    .line 40
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/b/a/c;->iC:Lcom/taobao/statistic/core/q;

    .line 41
    return-void
.end method


# virtual methods
.method public aC()Ljava/util/List;
    .locals 1
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
    .line 91
    sget-object v0, Lcom/taobao/statistic/b/a/c;->iA:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "configurationName"
    .parameter "aConfiguration"

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, jValue:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #jValue:Lorg/json/JSONObject;
    .local v2, jValue:Lorg/json/JSONObject;
    move-object v1, v2

    .line 61
    .end local v2           #jValue:Lorg/json/JSONObject;
    .restart local v1       #jValue:Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, uploadServer:Ljava/lang/String;
    :try_start_1
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 69
    :goto_1
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/taobao/statistic/b/a/c;->iC:Lcom/taobao/statistic/core/q;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/taobao/statistic/core/q;->x(Z)V

    .line 72
    iget-object v4, p0, Lcom/taobao/statistic/b/a/c;->iC:Lcom/taobao/statistic/core/q;

    invoke-virtual {v4, v3}, Lcom/taobao/statistic/core/q;->Q(Ljava/lang/String;)V

    .line 75
    .end local v3           #uploadServer:Ljava/lang/String;
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v3       #uploadServer:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 66
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public l(Ljava/lang/String;)V
    .locals 2
    .parameter "pResponseText"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/statistic/b/a/c;->iC:Lcom/taobao/statistic/core/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->x(Z)V

    .line 85
    iget-object v0, p0, Lcom/taobao/statistic/b/a/c;->iC:Lcom/taobao/statistic/core/q;

    const-string v1, "http://adash.m.taobao.com/rest/ur"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->Q(Ljava/lang/String;)V

    .line 87
    return-void
.end method
