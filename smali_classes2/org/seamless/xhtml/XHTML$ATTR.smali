.class public final enum Lorg/seamless/xhtml/XHTML$ATTR;
.super Ljava/lang/Enum;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/xhtml/XHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATTR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/xhtml/XHTML$ATTR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final enum action:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum alt:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum colspan:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum content:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum href:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum id:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum method:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum name:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum rel:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum rev:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum rowspan:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum scheme:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum src:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum style:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum title:Lorg/seamless/xhtml/XHTML$ATTR;

.field public static final enum type:Lorg/seamless/xhtml/XHTML$ATTR;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 51
    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "style"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->style:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "title"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->title:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 52
    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "type"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->type:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "href"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "name"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->name:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "content"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->content:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "scheme"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->scheme:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "rel"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->rel:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "rev"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->rev:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 53
    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "colspan"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->colspan:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "rowspan"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->rowspan:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "src"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->src:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "alt"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->alt:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 54
    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "action"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->action:Lorg/seamless/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ATTR;

    const-string v1, "method"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lorg/seamless/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->method:Lorg/seamless/xhtml/XHTML$ATTR;

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [Lorg/seamless/xhtml/XHTML$ATTR;

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->style:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v3

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->title:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v4

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->type:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v5

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v6

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->name:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v7

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->content:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v8

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->scheme:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v9

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->rel:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v10

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->rev:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v11

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->colspan:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v12

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->rowspan:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v13

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->src:Lorg/seamless/xhtml/XHTML$ATTR;

    aput-object v1, v0, v14

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->alt:Lorg/seamless/xhtml/XHTML$ATTR;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->action:Lorg/seamless/xhtml/XHTML$ATTR;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->method:Lorg/seamless/xhtml/XHTML$ATTR;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->$VALUES:[Lorg/seamless/xhtml/XHTML$ATTR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/xhtml/XHTML$ATTR;
    .locals 1

    .line 50
    const-class v0, Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/xhtml/XHTML$ATTR;

    return-object p0
.end method

.method public static values()[Lorg/seamless/xhtml/XHTML$ATTR;
    .locals 1

    .line 50
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->$VALUES:[Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {v0}, [Lorg/seamless/xhtml/XHTML$ATTR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTML$ATTR;

    return-object v0
.end method
