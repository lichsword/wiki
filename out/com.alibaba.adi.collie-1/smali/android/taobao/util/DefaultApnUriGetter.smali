.class public Landroid/taobao/util/DefaultApnUriGetter;
.super Ljava/lang/Object;
.source "DefaultApnUriGetter.java"

# interfaces
.implements Landroid/taobao/util/ApnUriGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUriList()[Landroid/net/Uri;
    .locals 3

    .prologue
    .line 13
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/net/Uri;

    .line 14
    .local v0, uris:[Landroid/net/Uri;
    const/4 v1, 0x0

    const-string v2, "content://telephony/carriers/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 15
    const/4 v1, 0x1

    const-string v2, "content://telephony/carriers/current"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 16
    return-object v0
.end method
