.class public abstract Lcom/raizlabs/android/dbflow/structure/b;
.super Lcom/raizlabs/android/dbflow/structure/h;
.source "InstanceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/h<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/h;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method


# virtual methods
.method public abstract newInstance()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation
.end method
