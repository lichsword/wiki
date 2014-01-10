.class public Lcom/ut/device/e;
.super Ljava/lang/Object;
.source "UTUtdidHelper.java"


# static fields
.field private static lq:Ljava/util/Random;


# instance fields
.field private ph:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ut/device/e;->lq:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"

    iput-object v0, p0, Lcom/ut/device/e;->ph:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/ut/device/e;->ph:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/c;->k([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/device/e;->ph:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static ea()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 31
    :cond_0
    sget-object v2, Lcom/ut/device/e;->lq:Ljava/util/Random;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public an(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pPackedUtdid"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/ut/device/e;->ph:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/usertrack/android/utils/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, lUtdid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #lUtdid:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #lUtdid:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ut/device/e;->ea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j([B)Ljava/lang/String;
    .locals 3
    .parameter "pUtdid"

    .prologue
    .line 18
    invoke-static {p1}, Lorg/usertrack/android/utils/c;->k([B)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, lB64String:Ljava/lang/String;
    iget-object v2, p0, Lcom/ut/device/e;->ph:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/usertrack/android/utils/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, lEResult:Ljava/lang/String;
    return-object v1
.end method
