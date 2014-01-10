.class public Landroid/taobao/util/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2Object([B)Ljava/lang/Object;
    .locals 5
    .parameter "data"

    .prologue
    .line 44
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    .local v0, byteArray:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 48
    .local v2, objectStream:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #objectStream:Ljava/io/ObjectInputStream;
    .local v3, objectStream:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 56
    .end local v3           #objectStream:Ljava/io/ObjectInputStream;
    .restart local v2       #objectStream:Ljava/io/ObjectInputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 72
    :goto_1
    return-object v4

    .line 49
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/OptionalDataException;
    invoke-virtual {v1}, Ljava/io/OptionalDataException;->printStackTrace()V

    .line 72
    .end local v1           #e:Ljava/io/OptionalDataException;
    :cond_0
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 64
    :catch_3
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v1

    .line 69
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static object2Byte(Ljava/io/Serializable;)[B
    .locals 4
    .parameter "object"

    .prologue
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, byteArray:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .local v2, objectStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v2           #objectStream:Ljava/io/ObjectOutputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 31
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
