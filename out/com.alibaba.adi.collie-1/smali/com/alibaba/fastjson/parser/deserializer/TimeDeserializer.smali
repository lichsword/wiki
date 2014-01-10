.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

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
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "parser"
    .parameter "clazz"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 18
    .local v1, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    .line 19
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 21
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 22
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 25
    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 27
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 28
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 31
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->longValue()J

    move-result-wide v5

    .line 32
    .local v5, time:J
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 33
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_2

    .line 34
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 36
    :cond_2
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 38
    new-instance v7, Ljava/sql/Time;

    invoke-direct {v7, v5, v6}, Ljava/sql/Time;-><init>(J)V

    .line 64
    .end local v5           #time:J
    :cond_3
    :goto_0
    return-object v7

    .line 41
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 43
    .local v7, val:Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 44
    const/4 v7, 0x0

    goto :goto_0

    .line 47
    :cond_5
    instance-of v8, v7, Ljava/sql/Time;

    if-nez v8, :cond_3

    .line 49
    instance-of v8, v7, Ljava/lang/Number;

    if-eqz v8, :cond_6

    .line 50
    new-instance v8, Ljava/sql/Time;

    check-cast v7, Ljava/lang/Number;

    .end local v7           #val:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/sql/Time;-><init>(J)V

    move-object v7, v8

    goto :goto_0

    .line 51
    .restart local v7       #val:Ljava/lang/Object;
    :cond_6
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_9

    move-object v4, v7

    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .local v4, strVal:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 54
    const/4 v7, 0x0

    goto :goto_0

    .line 58
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, dateLexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 64
    .local v2, longVal:J
    :goto_1
    new-instance v7, Ljava/sql/Time;

    .end local v7           #val:Ljava/lang/Object;
    invoke-direct {v7, v2, v3}, Ljava/sql/Time;-><init>(J)V

    goto :goto_0

    .line 62
    .end local v2           #longVal:J
    .restart local v7       #val:Ljava/lang/Object;
    :cond_8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .restart local v2       #longVal:J
    goto :goto_1

    .line 67
    .end local v0           #dateLexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2           #longVal:J
    .end local v4           #strVal:Ljava/lang/String;
    :cond_9
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "parse error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    return v0
.end method
