.class public final enum Lpl/droidsonroids/gif/GifError;
.super Ljava/lang/Enum;
.source "GifError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/droidsonroids/gif/GifError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum DATA_TOO_BIG:Lpl/droidsonroids/gif/GifError;

.field public static final enum EOF_TOO_SOON:Lpl/droidsonroids/gif/GifError;

.field public static final enum IMAGE_DEFECT:Lpl/droidsonroids/gif/GifError;

.field public static final enum IMG_NOT_CONFINED:Lpl/droidsonroids/gif/GifError;

.field public static final enum INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/GifError;

.field public static final enum INVALID_IMG_DIMS:Lpl/droidsonroids/gif/GifError;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INVALID_SCR_DIMS:Lpl/droidsonroids/gif/GifError;

.field public static final enum NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/GifError;

.field public static final enum NOT_GIF_FILE:Lpl/droidsonroids/gif/GifError;

.field public static final enum NOT_READABLE:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_COLOR_MAP:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_ERROR:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_FRAMES:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_IMAG_DSCR:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_SCRN_DSCR:Lpl/droidsonroids/gif/GifError;

.field public static final enum OPEN_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum READ_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum REWIND_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum UNKNOWN:Lpl/droidsonroids/gif/GifError;

.field public static final enum WRONG_RECORD:Lpl/droidsonroids/gif/GifError;

.field private static final synthetic b:[Lpl/droidsonroids/gif/GifError;


# instance fields
.field a:I

.field public final description:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 18
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NO_ERROR"

    const-string v2, "No error"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NO_ERROR:Lpl/droidsonroids/gif/GifError;

    .line 22
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "OPEN_FAILED"

    const-string v2, "Failed to open given input"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v0, v1, v4, v5, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->OPEN_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 26
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "READ_FAILED"

    const-string v2, "Failed to read from given input"

    const/4 v5, 0x2

    const/16 v6, 0x66

    invoke-direct {v0, v1, v5, v6, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->READ_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 30
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NOT_GIF_FILE"

    const-string v2, "Data is not in GIF format"

    const/4 v6, 0x3

    const/16 v7, 0x67

    invoke-direct {v0, v1, v6, v7, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NOT_GIF_FILE:Lpl/droidsonroids/gif/GifError;

    .line 34
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NO_SCRN_DSCR"

    const-string v2, "No screen descriptor detected"

    const/4 v7, 0x4

    const/16 v8, 0x68

    invoke-direct {v0, v1, v7, v8, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NO_SCRN_DSCR:Lpl/droidsonroids/gif/GifError;

    .line 38
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NO_IMAG_DSCR"

    const-string v2, "No image descriptor detected"

    const/4 v8, 0x5

    const/16 v9, 0x69

    invoke-direct {v0, v1, v8, v9, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NO_IMAG_DSCR:Lpl/droidsonroids/gif/GifError;

    .line 42
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NO_COLOR_MAP"

    const-string v2, "Neither global nor local color map found"

    const/4 v9, 0x6

    const/16 v10, 0x6a

    invoke-direct {v0, v1, v9, v10, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NO_COLOR_MAP:Lpl/droidsonroids/gif/GifError;

    .line 46
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "WRONG_RECORD"

    const-string v2, "Wrong record type detected"

    const/4 v10, 0x7

    const/16 v11, 0x6b

    invoke-direct {v0, v1, v10, v11, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->WRONG_RECORD:Lpl/droidsonroids/gif/GifError;

    .line 50
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "DATA_TOO_BIG"

    const-string v2, "Number of pixels bigger than width * height"

    const/16 v11, 0x8

    const/16 v12, 0x6c

    invoke-direct {v0, v1, v11, v12, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->DATA_TOO_BIG:Lpl/droidsonroids/gif/GifError;

    .line 54
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NOT_ENOUGH_MEM"

    const-string v2, "Failed to allocate required memory"

    const/16 v12, 0x9

    const/16 v13, 0x6d

    invoke-direct {v0, v1, v12, v13, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/GifError;

    .line 58
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "CLOSE_FAILED"

    const-string v2, "Failed to close given input"

    const/16 v13, 0xa

    const/16 v14, 0x6e

    invoke-direct {v0, v1, v13, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->CLOSE_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 62
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NOT_READABLE"

    const-string v2, "Given file was not opened for read"

    const/16 v14, 0xb

    const/16 v15, 0x6f

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NOT_READABLE:Lpl/droidsonroids/gif/GifError;

    .line 66
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "IMAGE_DEFECT"

    const-string v2, "Image is defective, decoding aborted"

    const/16 v15, 0xc

    const/16 v14, 0x70

    invoke-direct {v0, v1, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->IMAGE_DEFECT:Lpl/droidsonroids/gif/GifError;

    .line 71
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "EOF_TOO_SOON"

    const-string v2, "Image EOF detected before image complete"

    const/16 v14, 0xd

    const/16 v15, 0x71

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->EOF_TOO_SOON:Lpl/droidsonroids/gif/GifError;

    .line 75
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "NO_FRAMES"

    const-string v2, "No frames found, at least one frame required"

    const/16 v15, 0xe

    const/16 v14, 0x3e8

    invoke-direct {v0, v1, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->NO_FRAMES:Lpl/droidsonroids/gif/GifError;

    .line 79
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "INVALID_SCR_DIMS"

    const-string v2, "Invalid screen size, dimensions must be positive"

    const/16 v14, 0xf

    const/16 v15, 0x3e9

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->INVALID_SCR_DIMS:Lpl/droidsonroids/gif/GifError;

    .line 85
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "INVALID_IMG_DIMS"

    const-string v2, "Invalid image size, dimensions must be positive"

    const/16 v14, 0x10

    const/16 v15, 0x3ea

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->INVALID_IMG_DIMS:Lpl/droidsonroids/gif/GifError;

    .line 91
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "IMG_NOT_CONFINED"

    const-string v2, "Image size exceeds screen size"

    const/16 v14, 0x11

    const/16 v15, 0x3eb

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->IMG_NOT_CONFINED:Lpl/droidsonroids/gif/GifError;

    .line 95
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "REWIND_FAILED"

    const-string v2, "Input source rewind failed, animation stopped"

    const/16 v14, 0x12

    const/16 v15, 0x3ec

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->REWIND_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 99
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "INVALID_BYTE_BUFFER"

    const-string v2, "Invalid and/or indirect byte buffer specified"

    const/16 v14, 0x13

    const/16 v15, 0x3ed

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/GifError;

    .line 103
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown error"

    const/16 v14, 0x14

    const/4 v15, -0x1

    invoke-direct {v0, v1, v14, v15, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/GifError;->UNKNOWN:Lpl/droidsonroids/gif/GifError;

    const/16 v0, 0x15

    .line 13
    new-array v0, v0, [Lpl/droidsonroids/gif/GifError;

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NO_ERROR:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v3

    sget-object v1, Lpl/droidsonroids/gif/GifError;->OPEN_FAILED:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v4

    sget-object v1, Lpl/droidsonroids/gif/GifError;->READ_FAILED:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v5

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NOT_GIF_FILE:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v6

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NO_SCRN_DSCR:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v7

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NO_IMAG_DSCR:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v8

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NO_COLOR_MAP:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v9

    sget-object v1, Lpl/droidsonroids/gif/GifError;->WRONG_RECORD:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v10

    sget-object v1, Lpl/droidsonroids/gif/GifError;->DATA_TOO_BIG:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v11

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v12

    sget-object v1, Lpl/droidsonroids/gif/GifError;->CLOSE_FAILED:Lpl/droidsonroids/gif/GifError;

    aput-object v1, v0, v13

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NOT_READABLE:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->IMAGE_DEFECT:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->EOF_TOO_SOON:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->NO_FRAMES:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->INVALID_SCR_DIMS:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->INVALID_IMG_DIMS:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->IMG_NOT_CONFINED:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->REWIND_FAILED:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lpl/droidsonroids/gif/GifError;->UNKNOWN:Lpl/droidsonroids/gif/GifError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lpl/droidsonroids/gif/GifError;->b:[Lpl/droidsonroids/gif/GifError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lpl/droidsonroids/gif/GifError;->a:I

    .line 113
    iput-object p4, p0, Lpl/droidsonroids/gif/GifError;->description:Ljava/lang/String;

    return-void
.end method

.method static a(I)Lpl/droidsonroids/gif/GifError;
    .locals 5

    .line 117
    invoke-static {}, Lpl/droidsonroids/gif/GifError;->values()[Lpl/droidsonroids/gif/GifError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 118
    iget v4, v3, Lpl/droidsonroids/gif/GifError;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lpl/droidsonroids/gif/GifError;->UNKNOWN:Lpl/droidsonroids/gif/GifError;

    .line 122
    iput p0, v0, Lpl/droidsonroids/gif/GifError;->a:I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/droidsonroids/gif/GifError;
    .locals 1

    .line 13
    const-class v0, Lpl/droidsonroids/gif/GifError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/droidsonroids/gif/GifError;

    return-object p0
.end method

.method public static values()[Lpl/droidsonroids/gif/GifError;
    .locals 1

    .line 13
    sget-object v0, Lpl/droidsonroids/gif/GifError;->b:[Lpl/droidsonroids/gif/GifError;

    invoke-virtual {v0}, [Lpl/droidsonroids/gif/GifError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/droidsonroids/gif/GifError;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 5

    .line 134
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "GifError %d: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lpl/droidsonroids/gif/GifError;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lpl/droidsonroids/gif/GifError;->description:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 130
    iget v0, p0, Lpl/droidsonroids/gif/GifError;->a:I

    return v0
.end method
