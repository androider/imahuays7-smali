.class Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "NormalListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyco/dialog/widget/NormalListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListDialogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/NormalListDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/NormalListDialog;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v0}, Lcom/flyco/dialog/widget/NormalListDialog;->access$100(Lcom/flyco/dialog/widget/NormalListDialog;)Ljava/util/ArrayList;

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

    .line 284
    iget-object p2, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {p2}, Lcom/flyco/dialog/widget/NormalListDialog;->access$100(Lcom/flyco/dialog/widget/NormalListDialog;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flyco/dialog/entity/DialogMenuItem;

    .line 286
    new-instance p3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v0}, Lcom/flyco/dialog/widget/NormalListDialog;->access$200(Lcom/flyco/dialog/widget/NormalListDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 288
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 290
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v2}, Lcom/flyco/dialog/widget/NormalListDialog;->access$300(Lcom/flyco/dialog/widget/NormalListDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 291
    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/flyco/dialog/widget/NormalListDialog;->access$400(Lcom/flyco/dialog/widget/NormalListDialog;F)I

    move-result v2

    invoke-virtual {v1, v0, v0, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 292
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v3}, Lcom/flyco/dialog/widget/NormalListDialog;->access$500(Lcom/flyco/dialog/widget/NormalListDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 297
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 298
    iget-object v4, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v4}, Lcom/flyco/dialog/widget/NormalListDialog;->access$600(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v4, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v4}, Lcom/flyco/dialog/widget/NormalListDialog;->access$700(Lcom/flyco/dialog/widget/NormalListDialog;)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 301
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v4, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$800(Lcom/flyco/dialog/widget/NormalListDialog;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$900(Lcom/flyco/dialog/widget/NormalListDialog;F)I

    move-result v4

    int-to-float v4, v4

    .line 303
    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1000(Lcom/flyco/dialog/widget/NormalListDialog;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1100(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v5

    iget-object v6, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    .line 305
    invoke-static {v6}, Lcom/flyco/dialog/widget/NormalListDialog;->access$100(Lcom/flyco/dialog/widget/NormalListDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne p1, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 304
    :goto_0
    invoke-static {v4, v0, v5, v3}, Lcom/flyco/dialog/utils/CornerUtils;->listItemSelector(FIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v3}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1100(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v3

    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    .line 308
    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$100(Lcom/flyco/dialog/widget/NormalListDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 307
    invoke-static {v4, v0, v3, v5, p1}, Lcom/flyco/dialog/utils/CornerUtils;->listItemSelector(FIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :goto_1
    iget p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mResId:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p1, v3}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1200(Lcom/flyco/dialog/widget/NormalListDialog;F)I

    move-result p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p1, v3}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1300(Lcom/flyco/dialog/widget/NormalListDialog;F)I

    move-result p1

    .line 312
    :goto_2
    iget-object v3, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1400(Lcom/flyco/dialog/widget/NormalListDialog;F)I

    move-result v3

    .line 314
    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5, v4}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1500(Lcom/flyco/dialog/widget/NormalListDialog;F)I

    move-result v4

    .line 315
    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1600(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v5

    add-int/2addr p1, v5

    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1700(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v5}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1800(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;->this$0:Lcom/flyco/dialog/widget/NormalListDialog;

    invoke-static {v6}, Lcom/flyco/dialog/widget/NormalListDialog;->access$1900(Lcom/flyco/dialog/widget/NormalListDialog;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p3, p1, v3, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 317
    iget p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mResId:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mOperName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget p1, p2, Lcom/flyco/dialog/entity/DialogMenuItem;->mResId:I

    if-nez p1, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p3
.end method
