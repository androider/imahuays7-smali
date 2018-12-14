.class Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyco/dialog/widget/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListDialogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/ActionSheetDialog;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$100(Lcom/flyco/dialog/widget/ActionSheetDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 351
    iget-object p2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {p2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$100(Lcom/flyco/dialog/widget/ActionSheetDialog;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flyco/dialog/entity/DialogMenuItem;

    .line 353
    new-instance p3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$200(Lcom/flyco/dialog/widget/ActionSheetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 355
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 357
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$300(Lcom/flyco/dialog/widget/ActionSheetDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 358
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$400(Lcom/flyco/dialog/widget/ActionSheetDialog;F)I

    move-result v2

    invoke-virtual {v1, v0, v0, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 359
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v3}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$500(Lcom/flyco/dialog/widget/ActionSheetDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 363
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v4, 0x11

    .line 364
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 365
    iget-object v4, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v4}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$600(Lcom/flyco/dialog/widget/ActionSheetDialog;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    iget-object v4, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v4}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$700(Lcom/flyco/dialog/widget/ActionSheetDialog;)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 367
    iget-object v4, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    iget-object v5, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$800(Lcom/flyco/dialog/widget/ActionSheetDialog;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$900(Lcom/flyco/dialog/widget/ActionSheetDialog;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 369
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v4, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    iget-object v5, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$1000(Lcom/flyco/dialog/widget/ActionSheetDialog;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$1100(Lcom/flyco/dialog/widget/ActionSheetDialog;F)I

    move-result v4

    int-to-float v4, v4

    .line 371
    iget-object v5, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$1200(Lcom/flyco/dialog/widget/ActionSheetDialog;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    iget-object v5, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$1300(Lcom/flyco/dialog/widget/ActionSheetDialog;)I

    move-result v5

    iget-object v6, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    .line 373
    invoke-static {v6}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$100(Lcom/flyco/dialog/widget/ActionSheetDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne p1, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 372
    :goto_0
    invoke-static {v4, v0, v5, v3}, Lcom/flyco/dialog/utils/CornerUtils;->listItemSelector(FIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 375
    :cond_1
    iget-object v3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v3}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$1300(Lcom/flyco/dialog/widget/ActionSheetDialog;)I

    move-result v3

    iget-object v5, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    .line 376
    invoke-static {v5}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$100(Lcom/flyco/dialog/widget/ActionSheetDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 375
    invoke-static {v4, v0, v3, v5, p1}, Lcom/flyco/dialog/utils/CornerUtils;->listItemSelector(FIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :goto_1
    iget p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mResId:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget-object p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mOperName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mResId:I

    if-nez p1, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p3
.end method
