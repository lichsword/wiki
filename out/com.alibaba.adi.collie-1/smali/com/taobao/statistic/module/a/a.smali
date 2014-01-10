.class public abstract Lcom/taobao/statistic/module/a/a;
.super Lcom/taobao/statistic/c/b;
.source "ConfigurationBusiness.java"

# interfaces
.implements Lcom/taobao/statistic/module/a/c;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 0
    .parameter "aRuntime"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 19
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
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "configurationName"
    .parameter "configuration"

    .prologue
    .line 28
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .parameter "responseText"

    .prologue
    .line 44
    return-void
.end method
