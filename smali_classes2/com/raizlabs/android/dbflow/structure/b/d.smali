.class public abstract Lcom/raizlabs/android/dbflow/structure/b/d;
.super Ljava/lang/Object;
.source "BaseDatabaseStatement.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/d;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/d;->a(I)V

    :goto_0
    return-void
.end method
