.class public Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;
.super Lcom/alibaba/mobileim/sdk/openapi/f;
.source "WWImageMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hO:Ljava/lang/String;

.field private hQ:[B

.field private hR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/f;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hJ:I

    .line 33
    return-void
.end method


# virtual methods
.method protected checkArgs()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hQ:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hQ:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hO:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_1
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, all arguments are empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return v0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hO:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_3

    .line 108
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, image path is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hQ:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hQ:[B

    array-length v1, v1

    const/high16 v2, 0xa0

    if-le v1, v2, :cond_4

    .line 112
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, content is too large"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/mobileim/sdk/openapi/f;->toBundle(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "image_message_data"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hQ:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 97
    const-string v0, "image_message_path"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "image_message_mime"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWImageMessage;->hR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
