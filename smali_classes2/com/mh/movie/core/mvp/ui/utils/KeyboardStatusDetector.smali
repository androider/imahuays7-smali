.class public Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;
.super Ljava/lang/Object;
.source "KeyboardStatusDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;
    }
.end annotation


# static fields
.field private static final SOFT_KEY_BOARD_MIN_HEIGHT:I = 0x64


# instance fields
.field keyboardVisible:Z

.field private mVisibilityListener:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->keyboardVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->mVisibilityListener:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;

    return-object p0
.end method


# virtual methods
.method public registerActivity(Landroid/app/Activity;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    return-object p0
.end method

.method public registerFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    return-void
.end method

.method public registerView(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p0
.end method

.method public setmVisibilityListener(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->mVisibilityListener:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;

    return-object p0
.end method
