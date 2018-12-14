.class public Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;
.super Ljava/lang/Object;
.source "KeyboardChangeListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenerHandler"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mKeyBoardListen:Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;

.field private mOriginHeight:I

.field private mPreHeight:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "ListenerHandler"

    const-string v0, "contextObj is null"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->findContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mContentView:Landroid/view/View;

    .line 23
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->addContentTreeObserver()V

    :cond_1
    return-void
.end method

.method private addContentTreeObserver()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private findContentView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const v0, 0x1020002

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mPreHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 46
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mPreHeight:I

    .line 47
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mOriginHeight:I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    :cond_2
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mPreHeight:I

    if-eq v1, v0, :cond_1

    .line 51
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mPreHeight:I

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    .line 60
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mOriginHeight:I

    if-ne v1, v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 66
    :cond_3
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mOriginHeight:I

    sub-int v3, v1, v0

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mKeyBoardListen:Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mKeyBoardListen:Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;

    invoke-interface {v0, v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;->onKeyboardChange(ZI)V

    :cond_4
    return-void
.end method

.method public setKeyBoardListener(Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener;->mKeyBoardListen:Lcom/mh/movie/core/mvp/ui/utils/KeyboardChangeListener$KeyBoardListener;

    return-void
.end method
