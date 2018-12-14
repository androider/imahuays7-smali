.class public final Lcom/transitionseverywhere/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArcMotion:[I

.field public static final ArcMotion_maximumAngle:I = 0x0

.field public static final ArcMotion_minimumHorizontalAngle:I = 0x1

.field public static final ArcMotion_minimumVerticalAngle:I = 0x2

.field public static final ChangeBounds:[I

.field public static final ChangeBounds_resizeClip:I = 0x0

.field public static final ChangeTransform:[I

.field public static final ChangeTransform_reparent:I = 0x0

.field public static final ChangeTransform_reparentWithOverlay:I = 0x1

.field public static final Fade:[I

.field public static final Fade_fadingMode:I = 0x0

.field public static final PatternPathMotion:[I

.field public static final PatternPathMotion_patternPathData:I = 0x0

.field public static final Scale:[I

.field public static final Scale_disappearedScale:I = 0x0

.field public static final Slide:[I

.field public static final Slide_slideEdge:I = 0x0

.field public static final Transition:[I

.field public static final TransitionManager:[I

.field public static final TransitionManager_fromScene:I = 0x0

.field public static final TransitionManager_toScene:I = 0x1

.field public static final TransitionManager_transition:I = 0x2

.field public static final TransitionSet:[I

.field public static final TransitionSet_transitionOrdering:I = 0x0

.field public static final TransitionTarget:[I

.field public static final TransitionTarget_excludeClass:I = 0x0

.field public static final TransitionTarget_excludeId:I = 0x1

.field public static final TransitionTarget_excludeName:I = 0x2

.field public static final TransitionTarget_targetClass:I = 0x3

.field public static final TransitionTarget_targetId:I = 0x4

.field public static final TransitionTarget_targetName:I = 0x5

.field public static final Transition_android_duration:I = 0x1

.field public static final Transition_android_interpolator:I = 0x0

.field public static final Transition_duration:I = 0x2

.field public static final Transition_interpolator:I = 0x3

.field public static final Transition_matchOrder:I = 0x4

.field public static final Transition_startDelay:I = 0x5

.field public static final VisibilityTransition:[I

.field public static final VisibilityTransition_transitionVisibilityMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    .line 62
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/transitionseverywhere/R$styleable;->ArcMotion:[I

    const/4 v1, 0x1

    .line 66
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f040220

    aput v4, v2, v3

    sput-object v2, Lcom/transitionseverywhere/R$styleable;->ChangeBounds:[I

    const/4 v2, 0x2

    .line 68
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/transitionseverywhere/R$styleable;->ChangeTransform:[I

    .line 71
    new-array v2, v1, [I

    const v4, 0x7f0400e0

    aput v4, v2, v3

    sput-object v2, Lcom/transitionseverywhere/R$styleable;->Fade:[I

    .line 73
    new-array v2, v1, [I

    const v4, 0x7f0401eb

    aput v4, v2, v3

    sput-object v2, Lcom/transitionseverywhere/R$styleable;->PatternPathMotion:[I

    .line 75
    new-array v2, v1, [I

    const v4, 0x7f0400b9

    aput v4, v2, v3

    sput-object v2, Lcom/transitionseverywhere/R$styleable;->Scale:[I

    .line 77
    new-array v2, v1, [I

    const v4, 0x7f040254

    aput v4, v2, v3

    sput-object v2, Lcom/transitionseverywhere/R$styleable;->Slide:[I

    const/4 v2, 0x6

    .line 79
    new-array v4, v2, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/transitionseverywhere/R$styleable;->Transition:[I

    .line 86
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/transitionseverywhere/R$styleable;->TransitionManager:[I

    .line 90
    new-array v0, v1, [I

    const v4, 0x7f0402b8

    aput v4, v0, v3

    sput-object v0, Lcom/transitionseverywhere/R$styleable;->TransitionSet:[I

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/transitionseverywhere/R$styleable;->TransitionTarget:[I

    .line 99
    new-array v0, v1, [I

    const v1, 0x7f0402b9

    aput v1, v0, v3

    sput-object v0, Lcom/transitionseverywhere/R$styleable;->VisibilityTransition:[I

    return-void

    :array_0
    .array-data 4
        0x7f040195
        0x7f0401c1
        0x7f0401c2
    .end array-data

    :array_1
    .array-data 4
        0x7f04021d
        0x7f04021e
    .end array-data

    :array_2
    .array-data 4
        0x1010141
        0x1010198
        0x7f0400c9
        0x7f040116
        0x7f04018f
        0x7f04025c
    .end array-data

    :array_3
    .array-data 4
        0x7f0400f5
        0x7f0402a9
        0x7f0402b7
    .end array-data

    :array_4
    .array-data 4
        0x7f0400d1
        0x7f0400d2
        0x7f0400d3
        0x7f04027e
        0x7f04027f
        0x7f040280
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
