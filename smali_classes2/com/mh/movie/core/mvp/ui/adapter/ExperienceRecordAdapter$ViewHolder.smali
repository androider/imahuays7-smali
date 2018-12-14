.class public Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExperienceRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

.field tvDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03c1
    .end annotation
.end field

.field tvExpName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03d8
    .end annotation
.end field

.field tvExpValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03d9
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

    .line 61
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
