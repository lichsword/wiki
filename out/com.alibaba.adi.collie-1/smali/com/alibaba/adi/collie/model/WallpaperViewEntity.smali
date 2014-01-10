.class public Lcom/alibaba/adi/collie/model/WallpaperViewEntity;
.super Ljava/lang/Object;
.source "WallpaperViewEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private filePath:Ljava/lang/String;

.field private isSelected:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity$1;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/WallpaperViewEntity$1;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->filePath:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->filePath:Ljava/lang/String;

    .line 15
    if-eqz p2, :cond_0

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/alibaba/adi/collie/model/WallpaperViewEntity;->isSelected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
