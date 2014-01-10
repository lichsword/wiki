.class public Lcom/etao/kakalib/api/KakaLibMTopParserHelper$BaseCardDeserializer;
.super Ljava/lang/Object;
.source "KakaLibMTopParserHelper.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/api/KakaLibMTopParserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseCardDeserializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/etao/kakalib/api/beans/BaseCard;
    .locals 3
    .parameter "parser"
    .parameter "type"
    .parameter "fieldName"

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 51
    .local v0, json:Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "cardNo"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 52
    .local v1, num:I
    sparse-switch v1, :sswitch_data_0

    .line 71
    const-class v2, Lcom/etao/kakalib/api/beans/BaseCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    :goto_0
    return-object v2

    .line 54
    :sswitch_0
    const-class v2, Lcom/etao/kakalib/api/beans/ProductCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    goto :goto_0

    .line 56
    :sswitch_1
    const-class v2, Lcom/etao/kakalib/api/beans/CommentCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    goto :goto_0

    .line 61
    :sswitch_2
    const-class v2, Lcom/etao/kakalib/api/beans/PriceCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    goto :goto_0

    .line 63
    :sswitch_3
    const-class v2, Lcom/etao/kakalib/api/beans/PropertyCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    goto :goto_0

    .line 65
    :sswitch_4
    const-class v2, Lcom/etao/kakalib/api/beans/TaoItemCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    goto :goto_0

    .line 67
    :sswitch_5
    const-class v2, Lcom/etao/kakalib/api/beans/ExtensionCard;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/api/beans/BaseCard;

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xb -> :sswitch_4
        0x29 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$BaseCardDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/etao/kakalib/api/beans/BaseCard;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xc

    return v0
.end method
