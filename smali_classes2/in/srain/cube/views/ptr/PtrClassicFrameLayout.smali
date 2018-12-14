.class public Lin/srain/cube/views/ptr/PtrClassicFrameLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "PtrClassicFrameLayout.java"


# instance fields
.field private d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 26
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    .line 27
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Lin/srain/cube/views/ptr/c;)V

    return-void
.end method


# virtual methods
.method public getHeader()Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;
    .locals 1

    .line 32
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    return-object v0
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
