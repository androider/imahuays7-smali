.class public Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/huawei/android/pushselfshow/utils/b$a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:Lcom/huawei/android/pushselfshow/utils/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    iput v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a:I

    iput v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->b:I

    new-instance p1, Lcom/huawei/android/pushselfshow/utils/b;

    invoke-direct {p1, p0}, Lcom/huawei/android/pushselfshow/utils/b;-><init>(Lcom/huawei/android/pushselfshow/utils/b$a;)V

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->e:Lcom/huawei/android/pushselfshow/utils/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->b:I

    iget v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a:I

    iget v2, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->c:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a:I

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a:I

    mul-int v1, v1, v2

    div-int/lit16 v1, v1, 0x2710

    iput v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->invalidate()V

    iget p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a:I

    iget v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->b:I

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->e:Lcom/huawei/android/pushselfshow/utils/b;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->e:Lcom/huawei/android/pushselfshow/utils/b;

    invoke-virtual {v1, v0}, Lcom/huawei/android/pushselfshow/utils/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lcom/huawei/android/pushselfshow/utils/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->a:I

    mul-int p4, p4, p2

    div-int/lit16 p4, p4, 0x2710

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/PageProgressView;->d:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
