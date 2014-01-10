.class final Lcom/taobao/statistic/b/a/c$1;
.super Ljava/util/ArrayList;
.source "RealTimeDebuggingBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const-string v0, "B01N4"

    invoke-virtual {p0, v0}, Lcom/taobao/statistic/b/a/c$1;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
