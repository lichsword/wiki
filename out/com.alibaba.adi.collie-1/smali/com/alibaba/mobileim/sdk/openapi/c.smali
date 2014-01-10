.class public Lcom/alibaba/mobileim/sdk/openapi/c;
.super Lcom/alibaba/mobileim/sdk/openapi/a;
.source "SendMessageReq.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hK:Lcom/alibaba/mobileim/sdk/openapi/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/a;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/mobileim/sdk/openapi/f;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/c;->hK:Lcom/alibaba/mobileim/sdk/openapi/f;

    .line 33
    return-void
.end method


# virtual methods
.method protected checkArgs()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/c;->hK:Lcom/alibaba/mobileim/sdk/openapi/f;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/alibaba/mobileim/sdk/openapi/c;->TAG:Ljava/lang/String;

    const-string v1, "message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/c;->hK:Lcom/alibaba/mobileim/sdk/openapi/f;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/sdk/openapi/f;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/c;->hK:Lcom/alibaba/mobileim/sdk/openapi/f;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/mobileim/sdk/openapi/a;->toBundle(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "object_identify"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/c;->hK:Lcom/alibaba/mobileim/sdk/openapi/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/c;->hK:Lcom/alibaba/mobileim/sdk/openapi/f;

    invoke-virtual {v0, p1}, Lcom/alibaba/mobileim/sdk/openapi/f;->toBundle(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
