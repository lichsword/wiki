.class public Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;
.super Lcom/alibaba/mobileim/sdk/openapi/f;
.source "WWTextMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/f;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->hJ:I

    .line 23
    return-void
.end method


# virtual methods
.method protected checkArgs()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->hS:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->hS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->TAG:Ljava/lang/String;

    const-string v2, "message content empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->hS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_2

    .line 44
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->TAG:Ljava/lang/String;

    const-string v2, "message content is too long"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->hS:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alibaba/mobileim/sdk/openapi/f;->toBundle(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "text_message_text"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->hS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
