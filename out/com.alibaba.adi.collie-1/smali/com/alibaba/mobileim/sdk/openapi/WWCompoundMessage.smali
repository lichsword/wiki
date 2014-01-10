.class public Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;
.super Lcom/alibaba/mobileim/sdk/openapi/f;
.source "WWCompoundMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hO:Ljava/lang/String;

.field private hP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLink:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/mobileim/sdk/openapi/f;-><init>()V

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hJ:I

    .line 40
    return-void
.end method


# virtual methods
.method protected checkArgs()Z
    .locals 3

    .prologue
    const/16 v2, 0x2800

    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hO:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 85
    :cond_0
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, image path invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mLink:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 89
    :cond_2
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, link invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mText:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 93
    :cond_4
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, text invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_7

    .line 97
    :cond_6
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, title invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_7
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hP:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 101
    :cond_8
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->TAG:Ljava/lang/String;

    const-string v2, "checkArgs fail, imagemessages empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/alibaba/mobileim/sdk/openapi/f;->toBundle(Landroid/os/Bundle;)V

    .line 141
    const-string v6, "compound_message_image"

    iget-object v7, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hO:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v6, "compound_message_link"

    iget-object v7, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "compound_message_text"

    iget-object v7, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mText:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v6, "compound_message_title"

    iget-object v7, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v2, ja:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hP:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, length:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 147
    iget-object v6, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;->hP:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;

    .line 148
    .local v5, message:Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v3, jo:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "image"

    invoke-virtual {v5}, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;->aA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v6, "text"

    invoke-virtual {v5}, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v6, "link"

    invoke-virtual {v5}, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #jo:Lorg/json/JSONObject;
    .end local v5           #message:Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;
    :cond_0
    const-string v6, "compound_message_flow"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method
