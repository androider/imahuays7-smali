.class public Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;
.super Landroid/widget/SeekBar;
.source "SeekBarNotDrag.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->a:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->a:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDrag(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->a:Z

    return-void
.end method
