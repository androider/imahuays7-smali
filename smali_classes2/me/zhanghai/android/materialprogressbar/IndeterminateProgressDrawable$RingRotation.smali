.class Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;
.super Ljava/lang/Object;
.source "IndeterminateProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingRotation"
.end annotation


# instance fields
.field private mRotation:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;)F
    .locals 0

    .line 132
    iget p0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;->mRotation:F

    return p0
.end method


# virtual methods
.method public setRotation(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 139
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;->mRotation:F

    return-void
.end method
