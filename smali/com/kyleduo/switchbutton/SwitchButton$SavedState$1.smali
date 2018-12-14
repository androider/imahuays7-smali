.class final Lcom/kyleduo/switchbutton/SwitchButton$SavedState$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kyleduo/switchbutton/SwitchButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    .locals 2

    .line 1131
    new-instance v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcel;Lcom/kyleduo/switchbutton/SwitchButton$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    .locals 0

    .line 1135
    new-array p1, p1, [Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1129
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState$1;->a(Landroid/os/Parcel;)Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1129
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState$1;->a(I)[Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    move-result-object p1

    return-object p1
.end method
