.class public Lcom/fm/openinstall/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/fm/openinstall/b/c;

.field public static final b:Lcom/fm/openinstall/b/c;

.field public static final c:Lcom/fm/openinstall/b/c;

.field public static final d:Lcom/fm/openinstall/b/c;

.field public static final e:Lcom/fm/openinstall/b/c;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fm/openinstall/b/c;

    const-string v1, "\u672a\u521d\u59cb\u5316"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/fm/openinstall/b/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/fm/openinstall/b/c;->a:Lcom/fm/openinstall/b/c;

    new-instance v0, Lcom/fm/openinstall/b/c;

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/fm/openinstall/b/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/fm/openinstall/b/c;->b:Lcom/fm/openinstall/b/c;

    new-instance v0, Lcom/fm/openinstall/b/c;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/fm/openinstall/b/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/fm/openinstall/b/c;->c:Lcom/fm/openinstall/b/c;

    new-instance v0, Lcom/fm/openinstall/b/c;

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/fm/openinstall/b/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/fm/openinstall/b/c;->d:Lcom/fm/openinstall/b/c;

    new-instance v0, Lcom/fm/openinstall/b/c;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef"

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/fm/openinstall/b/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/fm/openinstall/b/c;->e:Lcom/fm/openinstall/b/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fm/openinstall/b/c;->f:I

    iput-object p2, p0, Lcom/fm/openinstall/b/c;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/fm/openinstall/b/c;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lcom/fm/openinstall/b/c;->a:Lcom/fm/openinstall/b/c;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/fm/openinstall/b/c;->b:Lcom/fm/openinstall/b/c;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/fm/openinstall/b/c;->c:Lcom/fm/openinstall/b/c;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/fm/openinstall/b/c;->d:Lcom/fm/openinstall/b/c;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/fm/openinstall/b/c;->e:Lcom/fm/openinstall/b/c;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/fm/openinstall/b/c;->f:I

    return v0
.end method
