.class public Lcom/alibaba/fastjson/serializer/LocaleSerializer;
.super Ljava/lang/Object;
.source "LocaleSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/LocaleSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/alibaba/fastjson/serializer/LocaleSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/LocaleSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/LocaleSerializer;->instance:Lcom/alibaba/fastjson/serializer/LocaleSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
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
    .line 12
    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 19
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 17
    check-cast v0, Ljava/util/Locale;

    .line 18
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
