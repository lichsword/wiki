.class public Lcom/taobao/android/sso/internal/SignatureWhitelist;
.super Ljava/lang/Object;
.source "SignatureWhitelist.java"


# static fields
.field private static final PREFS_KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final PREFS_KEY_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final SHARED_PREFS_SSO:Ljava/lang/String; = ".sso.whitelist"

.field private static final TAG:Ljava/lang/String; = "Signature"


# instance fields
.field private mSignatures:[Landroid/content/pm/Signature;

.field private final mWhitelistStore:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v4, ".sso.whitelist"

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mWhitelistStore:Landroid/content/SharedPreferences;

    .line 54
    iget-object v4, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mWhitelistStore:Landroid/content/SharedPreferences;

    const-string v5, "whitelist"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, whitelist:Ljava/lang/String;
    if-nez v3, :cond_1

    new-array v4, v7, [Landroid/content/pm/Signature;

    iput-object v4, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    .line 63
    :cond_0
    return-void

    .line 57
    :cond_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    new-array v4, v4, [Landroid/content/pm/Signature;

    iput-object v4, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    .line 59
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    new-instance v5, Landroid/content/pm/Signature;

    aget-object v6, v1, v2

    invoke-direct {v5, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "Signature"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Malformed signature: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - (hidden for security)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method getTimestamp()J
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mWhitelistStore:Landroid/content/SharedPreferences;

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public match([Landroid/content/pm/Signature;)Z
    .locals 8
    .parameter "signatures"

    .prologue
    const/4 v4, 0x0

    .line 22
    iget-object v5, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 23
    :cond_0
    sget-object v5, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelist:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/content/pm/Signature;

    iput-object v5, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    .line 24
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelist:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 28
    .end local v1           #i:I
    :cond_1
    iget-object v5, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 29
    .local v3, whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    array-length v6, p1

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_3

    .line 31
    :goto_2
    return v4

    .line 25
    .end local v3           #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    .restart local v1       #i:I
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    new-instance v6, Landroid/content/pm/Signature;

    sget-object v7, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelist:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v6, v7}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "Signature"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Malformed signature: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - (hidden for security)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 29
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #i:I
    .restart local v3       #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    :cond_3
    aget-object v2, p1, v5

    .line 30
    .local v2, signature:Landroid/content/pm/Signature;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    .line 29
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public update([Landroid/content/pm/Signature;J)Z
    .locals 10
    .parameter "signatures"
    .parameter "new_timestamp"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    array-length v6, p1

    if-nez v6, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v4

    .line 36
    :cond_1
    array-length v6, p1

    new-array v6, v6, [Landroid/content/pm/Signature;

    iput-object v6, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    .line 37
    iget-object v6, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mSignatures:[Landroid/content/pm/Signature;

    array-length v7, p1

    invoke-static {p1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v6, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mWhitelistStore:Landroid/content/SharedPreferences;

    const-string v7, "timestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 39
    .local v1, our_timestamp:J
    cmp-long v6, p2, v1

    if-lez v6, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, joiner:Ljava/lang/StringBuilder;
    array-length v6, p1

    :goto_1
    if-lt v4, v6, :cond_2

    .line 43
    iget-object v4, p0, Lcom/taobao/android/sso/internal/SignatureWhitelist;->mWhitelistStore:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "timestamp"

    invoke-interface {v4, v6, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 44
    const-string v6, "whitelist"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v4, v5

    .line 45
    goto :goto_0

    .line 41
    :cond_2
    aget-object v3, p1, v4

    .line 42
    .local v3, signature:Landroid/content/pm/Signature;
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
