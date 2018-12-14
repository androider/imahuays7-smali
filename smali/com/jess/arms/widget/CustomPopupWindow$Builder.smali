.class public final Lcom/jess/arms/widget/CustomPopupWindow$Builder;
.super Ljava/lang/Object;
.source "CustomPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/widget/CustomPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private animationStyle:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private contentView:Landroid/view/View;

.field private isFocus:Z

.field private isOutsideTouch:Z

.field private isWrap:Z

.field private listener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

.field private parentView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isOutsideTouch:Z

    .line 112
    iput-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isFocus:Z

    .line 113
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->animationStyle:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jess/arms/widget/CustomPopupWindow$1;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Landroid/view/View;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Landroid/view/View;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->parentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->listener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isOutsideTouch:Z

    return p0
.end method

.method static synthetic access$400(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isFocus:Z

    return p0
.end method

.method static synthetic access$500(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->animationStyle:I

    return p0
.end method

.method static synthetic access$700(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isWrap:Z

    return p0
.end method


# virtual methods
.method public animationStyle(I)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 158
    iput p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->animationStyle:I

    return-object p0
.end method

.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public build()Lcom/jess/arms/widget/CustomPopupWindow;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContentView is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->listener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomPopupWindowListener is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    new-instance v0, Lcom/jess/arms/widget/CustomPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jess/arms/widget/CustomPopupWindow;-><init>(Lcom/jess/arms/widget/CustomPopupWindow$Builder;Lcom/jess/arms/widget/CustomPopupWindow$1;)V

    return-object v0
.end method

.method public contentView(Landroid/view/View;)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public customListener(Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->listener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

    return-object p0
.end method

.method public isFocus(Z)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isFocus:Z

    return-object p0
.end method

.method public isOutsideTouch(Z)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isOutsideTouch:Z

    return-object p0
.end method

.method public isWrap(Z)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->isWrap:Z

    return-object p0
.end method

.method public parentView(Landroid/view/View;)Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->parentView:Landroid/view/View;

    return-object p0
.end method
