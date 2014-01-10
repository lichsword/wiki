.class public Lcom/ut/share/a/b;
.super Ljava/lang/Object;
.source "ShareWangxinController.java"


# instance fields
.field private pB:Lcom/alibaba/mobileim/sdk/openapi/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appId"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/alibaba/mobileim/sdk/openapi/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/alibaba/mobileim/sdk/openapi/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/share/a/b;->pB:Lcom/alibaba/mobileim/sdk/openapi/b;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "text"
    .parameter "pic"
    .parameter "link"
    .parameter "layout"

    .prologue
    .line 78
    const-string v3, "ShareWangxinController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#shareMediaMessage, title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", link="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, req:Lcom/alibaba/mobileim/sdk/openapi/c;
    const-string v3, "k_vertical"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    new-instance v2, Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;

    invoke-direct {v2}, Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;-><init>()V

    .line 82
    .local v2, verticalMessage:Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;
    invoke-virtual {v2, p1}, Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;->setTitle(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, p2}, Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;->setText(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, p3}, Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {v2, p4}, Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;->k(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/alibaba/mobileim/sdk/openapi/c;

    .end local v1           #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    invoke-direct {v1, v2}, Lcom/alibaba/mobileim/sdk/openapi/c;-><init>(Lcom/alibaba/mobileim/sdk/openapi/f;)V

    .line 94
    .end local v2           #verticalMessage:Lcom/alibaba/mobileim/sdk/openapi/WWVerticalMessage;
    .restart local v1       #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    :goto_0
    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/mobileim/sdk/openapi/c;->j(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/ut/share/a/b;->pB:Lcom/alibaba/mobileim/sdk/openapi/b;

    invoke-interface {v3, v1}, Lcom/alibaba/mobileim/sdk/openapi/b;->a(Lcom/alibaba/mobileim/sdk/openapi/a;)I

    .line 98
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;

    invoke-direct {v0}, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;-><init>()V

    .line 89
    .local v0, horMessage:Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;
    invoke-virtual {v0, p3}, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    invoke-virtual {v0, p4}, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->k(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p2}, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->setText(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/alibaba/mobileim/sdk/openapi/c;

    .end local v1           #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    invoke-direct {v1, v0}, Lcom/alibaba/mobileim/sdk/openapi/c;-><init>(Lcom/alibaba/mobileim/sdk/openapi/f;)V

    .restart local v1       #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    goto :goto_0
.end method

.method public ef()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/ut/share/a/b;->pB:Lcom/alibaba/mobileim/sdk/openapi/b;

    invoke-interface {v2}, Lcom/alibaba/mobileim/sdk/openapi/b;->ay()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ut/share/a/b;->pB:Lcom/alibaba/mobileim/sdk/openapi/b;

    invoke-interface {v2}, Lcom/alibaba/mobileim/sdk/openapi/b;->az()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShareWangxinController"

    const-string v3, "get isWWAppAvaliable fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .parameter "link"

    .prologue
    .line 49
    const-string v3, "ShareWangxinController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#shareTextMessage, text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", link="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, req:Lcom/alibaba/mobileim/sdk/openapi/c;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 52
    new-instance v0, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;

    invoke-direct {v0}, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;-><init>()V

    .line 53
    .local v0, linkMessage:Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;
    invoke-virtual {v0, p1}, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->setText(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;->k(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/alibaba/mobileim/sdk/openapi/c;

    .end local v1           #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    invoke-direct {v1, v0}, Lcom/alibaba/mobileim/sdk/openapi/c;-><init>(Lcom/alibaba/mobileim/sdk/openapi/f;)V

    .line 61
    .end local v0           #linkMessage:Lcom/alibaba/mobileim/sdk/openapi/WWLinkMessage;
    .restart local v1       #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    :goto_0
    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/mobileim/sdk/openapi/c;->j(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/ut/share/a/b;->pB:Lcom/alibaba/mobileim/sdk/openapi/b;

    invoke-interface {v3, v1}, Lcom/alibaba/mobileim/sdk/openapi/b;->a(Lcom/alibaba/mobileim/sdk/openapi/a;)I

    .line 65
    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance v2, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;

    invoke-direct {v2}, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;-><init>()V

    .line 58
    .local v2, textMessage:Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;
    invoke-virtual {v2, p1}, Lcom/alibaba/mobileim/sdk/openapi/WWTextMessage;->setText(Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/alibaba/mobileim/sdk/openapi/c;

    .end local v1           #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    invoke-direct {v1, v2}, Lcom/alibaba/mobileim/sdk/openapi/c;-><init>(Lcom/alibaba/mobileim/sdk/openapi/f;)V

    .restart local v1       #req:Lcom/alibaba/mobileim/sdk/openapi/c;
    goto :goto_0
.end method
