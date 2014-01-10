.class public Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
.super Ljava/lang/Object;
.source "ExpressResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/express/ExpressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpressSection"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult$ExpressSection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataFormat:Ljava/text/SimpleDateFormat;

.field private mShowDataFormat:Ljava/text/SimpleDateFormat;

.field public sinceNow:Ljava/lang/String;

.field public statusDesc:Ljava/lang/String;

.field public statusTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection$1;

    invoke-direct {v0}, Lcom/etao/kakalib/express/ExpressResult$ExpressSection$1;-><init>()V

    sput-object v0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->mDataFormat:Ljava/text/SimpleDateFormat;

    .line 140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->mShowDataFormat:Ljava/text/SimpleDateFormat;

    .line 141
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusDesc:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusTime:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->sinceNow:Ljava/lang/String;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/etao/kakalib/express/ExpressResult$ExpressSection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getSinceNow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->sinceNow:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusTime:Ljava/lang/String;

    return-object v0
.end method

.method public setSinceNow(Ljava/lang/String;)V
    .locals 0
    .parameter "sinceNow"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->sinceNow:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setStatusDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "statusDesc"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusDesc:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setStatusTime(Ljava/lang/String;)V
    .locals 5
    .parameter "statusTime"

    .prologue
    .line 89
    const-wide/16 v1, 0x0

    .line 91
    .local v1, statusMills:J
    :try_start_0
    iget-object v3, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->mDataFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->mShowDataFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusTime:Ljava/lang/String;

    .line 96
    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KaKaLibUtils;->sinceNow(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->sinceNow:Ljava/lang/String;

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->sinceNow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return-void
.end method
