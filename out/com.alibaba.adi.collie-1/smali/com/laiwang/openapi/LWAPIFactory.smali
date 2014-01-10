.class public Lcom/laiwang/openapi/LWAPIFactory;
.super Ljava/lang/Object;
.source "LWAPIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/openapi/message/IILWMessage;
    .locals 3
    .parameter "msgTitle"
    .parameter "msgContent"
    .parameter "msgChat"
    .parameter "msgLinkUrl"
    .parameter "thumbBMP"
    .parameter "msgImageThumbURL"
    .parameter "msgImageURL"
    .parameter "msgSource"
    .parameter "msgShareType"

    .prologue
    .line 70
    new-instance v2, Lcom/laiwang/openapi/message/LWMessage;

    invoke-direct {v2}, Lcom/laiwang/openapi/message/LWMessage;-><init>()V

    .line 71
    .local v2, lwMessage:Lcom/laiwang/openapi/message/LWMessage;
    move-object v1, v2

    .line 72
    .local v1, iMessageComponent:Lcom/laiwang/openapi/message/IMessageComponent;
    move-object v0, v2

    .line 73
    .local v0, iLWMessage:Lcom/laiwang/openapi/message/IILWMessage;
    invoke-interface {v1}, Lcom/laiwang/openapi/message/IMessageComponent;->isMessageComponent()V

    .line 74
    invoke-interface {v1, p0}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageTitle(Ljava/lang/String;)V

    .line 75
    invoke-interface {v1, p1}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageText(Ljava/lang/String;)V

    .line 76
    invoke-interface {v1, p3}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 77
    invoke-interface {v1, p5}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageImageThumbPath(Ljava/lang/String;)V

    .line 78
    invoke-interface {v1, p6}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageImageURL(Ljava/lang/String;)V

    .line 79
    invoke-interface {v1, p2}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageChat(Ljava/lang/String;)V

    .line 80
    invoke-interface {v1, p4}, Lcom/laiwang/openapi/message/IMessageComponent;->setMessageImageThumbBMP(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-interface {v0, p7}, Lcom/laiwang/openapi/message/IILWMessage;->setMesssageSource(Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, p8}, Lcom/laiwang/openapi/message/IILWMessage;->setShareType(Ljava/lang/String;)V

    .line 83
    return-object v2
.end method

.method public static createImageMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/openapi/message/IILWMessage;
    .locals 2
    .parameter "msgImageURL"
    .parameter "msgImageThumbURL"

    .prologue
    .line 49
    new-instance v1, Lcom/laiwang/openapi/message/LWMessage;

    invoke-direct {v1}, Lcom/laiwang/openapi/message/LWMessage;-><init>()V

    .line 50
    .local v1, lwMessage:Lcom/laiwang/openapi/message/LWMessage;
    move-object v0, v1

    .line 51
    .local v0, iMessageImage:Lcom/laiwang/openapi/message/IMessageImage;
    invoke-interface {v0}, Lcom/laiwang/openapi/message/IMessageImage;->isMessageImage()V

    .line 52
    invoke-interface {v0, p0}, Lcom/laiwang/openapi/message/IMessageImage;->setMessageImageURL(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0, p1}, Lcom/laiwang/openapi/message/IMessageImage;->setMessageImageThumbPath(Ljava/lang/String;)V

    .line 54
    return-object v1
.end method

.method public static createLWAPI()Lcom/laiwang/openapi/ILWAPI;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getInstance()Lcom/laiwang/openapi/LWAPI;

    move-result-object v0

    return-object v0
.end method

.method public static createTextMessage(Ljava/lang/String;)Lcom/laiwang/openapi/message/IILWMessage;
    .locals 2
    .parameter "msgContent"

    .prologue
    .line 34
    new-instance v1, Lcom/laiwang/openapi/message/LWMessage;

    invoke-direct {v1}, Lcom/laiwang/openapi/message/LWMessage;-><init>()V

    .line 35
    .local v1, lwMessage:Lcom/laiwang/openapi/message/LWMessage;
    move-object v0, v1

    .line 36
    .local v0, iMessageText:Lcom/laiwang/openapi/message/IMessageText;
    invoke-interface {v0}, Lcom/laiwang/openapi/message/IMessageText;->isMessageText()V

    .line 37
    invoke-interface {v0, p0}, Lcom/laiwang/openapi/message/IMessageText;->setMessageText(Ljava/lang/String;)V

    .line 39
    return-object v1
.end method
