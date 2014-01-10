.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;
.source "ClobSeriliazer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .parameter "serializer"
    .parameter "object"
    .parameter "fieldName"
    .parameter "fieldType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    if-nez p2, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 37
    :goto_0
    return-void

    .line 21
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/sql/Clob;

    move-object v2, v0

    .line 22
    .local v2, clob:Ljava/sql/Clob;
    invoke-interface {v2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    .line 24
    .local v5, reader:Ljava/io/Reader;
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 25
    .local v7, writer:Ljava/io/StringWriter;
    const/16 v8, 0x400

    new-array v1, v8, [C

    .line 26
    .local v1, buf:[C
    const/4 v4, 0x0

    .line 27
    .local v4, len:I
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 28
    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v4}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    .end local v1           #buf:[C
    .end local v2           #clob:Ljava/sql/Clob;
    .end local v4           #len:I
    .end local v5           #reader:Ljava/io/Reader;
    .end local v7           #writer:Ljava/io/StringWriter;
    :catch_0
    move-exception v3

    .line 35
    .local v3, e:Ljava/sql/SQLException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "write clob error"

    invoke-direct {v8, v9, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 30
    .end local v3           #e:Ljava/sql/SQLException;
    .restart local v1       #buf:[C
    .restart local v2       #clob:Ljava/sql/Clob;
    .restart local v4       #len:I
    .restart local v5       #reader:Ljava/io/Reader;
    .restart local v7       #writer:Ljava/io/StringWriter;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 32
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
