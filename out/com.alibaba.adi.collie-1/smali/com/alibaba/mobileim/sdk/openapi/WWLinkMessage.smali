.class public Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;
.super Lcom/alibaba/mobileim/sdk/openapi/f;
.source "WWLinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLink:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/f;-><init>()V

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->hJ:I

    .line 27
    return-void
.end method


# virtual methods
.method protected checkArgs()Z
    .locals 3

    .prologue
    const/16 v2, 0x2800

    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mLink:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 67
    :cond_0
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, link invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mText:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 71
    :cond_2
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, text invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mLink:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mText:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/mobileim/sdk/openapi/f;->toBundle(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "link_message_link"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "link_message_text"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
