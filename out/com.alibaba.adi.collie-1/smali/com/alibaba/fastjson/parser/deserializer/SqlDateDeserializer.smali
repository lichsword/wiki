.class public Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "SqlDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "parser"
    .parameter "clazz"
    .parameter "fieldName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 19
    if-nez p4, :cond_0

    move-object p4, v7

    .line 55
    .end local p4
    :goto_0
    return-object p4

    .line 23
    .restart local p4
    :cond_0
    instance-of v8, p4, Ljava/util/Date;

    if-eqz v8, :cond_1

    .line 24
    new-instance v6, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    .end local p4
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/sql/Date;-><init>(J)V

    .local v6, val:Ljava/sql/Date;
    move-object p4, v6

    .end local v6           #val:Ljava/sql/Date;
    .local p4, val:Ljava/sql/Date;
    goto :goto_0

    .line 25
    .local p4, val:Ljava/lang/Object;
    :cond_1
    instance-of v8, p4, Ljava/lang/Number;

    if-eqz v8, :cond_2

    .line 26
    new-instance v6, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    .end local p4           #val:Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/sql/Date;-><init>(J)V

    .restart local v6       #val:Ljava/sql/Date;
    move-object p4, v6

    .end local v6           #val:Ljava/sql/Date;
    .local p4, val:Ljava/sql/Date;
    goto :goto_0

    .line 27
    .local p4, val:Ljava/lang/Object;
    :cond_2
    instance-of v8, p4, Ljava/lang/String;

    if-eqz v8, :cond_5

    move-object v5, p4

    .line 28
    check-cast v5, Ljava/lang/String;

    .line 29
    .local v5, strVal:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    move-object p4, v7

    .line 30
    goto :goto_0

    .line 35
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, dateLexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 37
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 50
    .end local p4           #val:Ljava/lang/Object;
    .local v3, longVal:J
    :goto_1
    new-instance p4, Ljava/sql/Date;

    invoke-direct {p4, v3, v4}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    .line 40
    .end local v3           #longVal:J
    .restart local p4       #val:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 42
    .local v1, dateFormat:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 43
    .local v0, date:Ljava/util/Date;
    new-instance p4, Ljava/sql/Date;

    .end local p4           #val:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-direct {p4, v7, v8}, Ljava/sql/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v0           #date:Ljava/util/Date;
    :catch_0
    move-exception v7

    .line 48
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .restart local v3       #longVal:J
    goto :goto_1

    .line 52
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    .end local v2           #dateLexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3           #longVal:J
    .end local v5           #strVal:Ljava/lang/String;
    .restart local p4       #val:Ljava/lang/Object;
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    return v0
.end method
