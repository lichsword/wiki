.class public interface abstract Lcom/laiwang/openapi/message/IMessageComponent;
.super Ljava/lang/Object;
.source "IMessageComponent.java"

# interfaces
.implements Lcom/laiwang/openapi/message/IMessageAudio;
.implements Lcom/laiwang/openapi/message/IMessageImage;
.implements Lcom/laiwang/openapi/message/IMessageLink;
.implements Lcom/laiwang/openapi/message/IMessageText;


# virtual methods
.method public abstract getMessageChat()Ljava/lang/String;
.end method

.method public abstract isMessageComponent()V
.end method

.method public abstract setMessageChat(Ljava/lang/String;)V
.end method
