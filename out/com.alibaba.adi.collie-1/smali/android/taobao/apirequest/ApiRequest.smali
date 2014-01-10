.class public Landroid/taobao/apirequest/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# instance fields
.field protected params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequest;->params:Ljava/util/HashMap;

    .line 24
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequest;->params:Ljava/util/HashMap;

    const-string v1, "v"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 34
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 35
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method

.method public generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "baseUrl"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 46
    :cond_0
    const-string v5, ""

    .line 60
    :goto_0
    return-object v5

    .line 47
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 49
    .local v3, urlBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 51
    :cond_2
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    :cond_3
    iget-object v5, p0, Landroid/taobao/apirequest/ApiRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 57
    .local v4, urlParams:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 58
    aget-object v5, v4, v1

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, v4, v1

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "baseUrl"

    .prologue
    .line 65
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequest;->params:Ljava/util/HashMap;

    invoke-static {v1}, Landroid/taobao/util/TaoApiSign;->getSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, sign:Ljava/lang/String;
    return-object v0
.end method
