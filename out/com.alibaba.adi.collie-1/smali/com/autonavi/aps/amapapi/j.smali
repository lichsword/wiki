.class public final Lcom/autonavi/aps/amapapi/j;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/aps/amapapi/j$a;,
        Lcom/autonavi/aps/amapapi/j$b;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 26
    new-instance v1, Lcom/autonavi/aps/amapapi/j$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/autonavi/aps/amapapi/j$b;-><init>(Lcom/autonavi/aps/amapapi/j;B)V

    .line 28
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    iget-object v0, v1, Lcom/autonavi/aps/amapapi/j$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 5
    .parameter

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/autonavi/aps/amapapi/j$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/autonavi/aps/amapapi/j$a;-><init>(Lcom/autonavi/aps/amapapi/j;B)V

    .line 84
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    iget-object v0, v2, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setProvider(Ljava/lang/String;)V

    .line 96
    iget-object v0, v2, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/aps/amapapi/AmapLoc;->setTime(J)V

    .line 97
    iget-object v0, v2, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
