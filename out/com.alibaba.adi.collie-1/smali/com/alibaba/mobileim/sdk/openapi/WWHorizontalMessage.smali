.class public Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;
.super Lcom/alibaba/mobileim/sdk/openapi/f;
.source "WWHorizontalMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hO:Ljava/lang/String;

.field private hQ:[B

.field private mLink:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/f;-><init>()V

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hJ:I

    .line 35
    return-void
.end method


# virtual methods
.method protected checkArgs()Z
    .locals 4

    .prologue
    const/16 v3, 0x2800

    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hQ:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hQ:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hO:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 116
    :cond_1
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, all arguments are empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return v0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hO:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 120
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, image path is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hQ:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hQ:[B

    array-length v1, v1

    const/high16 v2, 0xa0

    if-le v1, v2, :cond_4

    .line 124
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, content is too large"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mLink:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 128
    :cond_5
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, link invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mText:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_8

    .line 132
    :cond_7
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, text invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mLink:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v1           #stream:Ljava/io/ByteArrayOutputStream;
    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hQ:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 67
    if-eqz v2, :cond_2

    .line 69
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 77
    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 70
    .end local v1           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 72
    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    sget-object v3, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 69
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 72
    :cond_1
    :goto_3
    throw v3

    .line 70
    :catch_3
    move-exception v0

    .line 71
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 67
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #stream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 63
    .end local v1           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v1           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mText:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/alibaba/mobileim/sdk/openapi/f;->toBundle(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "horizotal_message_link"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "horizotal_message_text"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "horizotal_message_image"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "horizotal_message_data"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWHorizontalMessage;->hQ:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 111
    return-void
.end method
