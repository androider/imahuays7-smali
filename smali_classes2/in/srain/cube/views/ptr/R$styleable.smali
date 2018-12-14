.class public final Lin/srain/cube/views/ptr/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PtrClassicHeader:[I

.field public static final PtrClassicHeader_ptr_rotate_ani_time:I = 0x0

.field public static final PtrFrameLayout:[I

.field public static final PtrFrameLayout_ptr_content:I = 0x0

.field public static final PtrFrameLayout_ptr_duration_to_close:I = 0x1

.field public static final PtrFrameLayout_ptr_duration_to_close_header:I = 0x2

.field public static final PtrFrameLayout_ptr_header:I = 0x3

.field public static final PtrFrameLayout_ptr_keep_header_when_refresh:I = 0x4

.field public static final PtrFrameLayout_ptr_pull_to_fresh:I = 0x5

.field public static final PtrFrameLayout_ptr_ratio_of_header_height_to_refresh:I = 0x6

.field public static final PtrFrameLayout_ptr_resistance:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040216

    aput v2, v0, v1

    sput-object v0, Lin/srain/cube/views/ptr/R$styleable;->PtrClassicHeader:[I

    const/16 v0, 0x8

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04020e
        0x7f04020f
        0x7f040210
        0x7f040211
        0x7f040212
        0x7f040213
        0x7f040214
        0x7f040215
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
