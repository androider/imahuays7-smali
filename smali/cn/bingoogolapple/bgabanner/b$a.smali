.class Lcn/bingoogolapple/bgabanner/b$a;
.super Landroid/support/v4/util/Pair;
.source "BGABannerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/bgabanner/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Throwable;",
        ">",
        "Landroid/support/v4/util/Pair<",
        "Landroid/graphics/Bitmap;",
        "TS;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "TS;)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
