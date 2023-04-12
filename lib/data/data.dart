import '../models/comment_model.dart';
import '../models/manufacturing_group_model.dart';
import '../models/order_model.dart';
import '../models/product_model.dart';

late List<ManufacturingGroupModel> manufacturingGroupModels = [
  ManufacturingGroupModel(id: '#12355', products: [
    ProductModel(
        stage: 'Quality Inspections',
        comment: [
          CommentModel(
            isReply: false,
            readStatus: false,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
            publisherName: 'Joseph Collman',
            createdAt: '6 hours ago',
            isApproved: true,
            adminName: 'Shiva Chauhan',
            approvedTime: '1 hour ago',
            content: 'Published a new inspection report',
          ),
          CommentModel(
            isReply: false,
            readStatus: false,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: false,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Sample 2',
        order:
        OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        timeLine: '16/08/2022 - 31/08/2022',
        timeValue: '4m ago',
        status: 'In progress'),
    ProductModel(
        stage: 'Quality Control',
        comment: [
          CommentModel(
            isReply: false,
            readStatus: false,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
            publisherName: 'Joseph Collman',
            createdAt: '6 hours ago',
            isApproved: true,
            adminName: 'Shiva Chauhan',
            approvedTime: '1 hour ago',
            content: 'Published a new inspection report',
          ),
          CommentModel(
            isReply: false,
            readStatus: false,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: false,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Pre-shipment',
        order: OrderModel(
            id: '#80150', productName: 'Summer Linen T Shirt DD11'),
        timeLine: '17/08/2022 - 10/08/2022',
        timeValue: '23m ago',
        status: 'Production'),
    ProductModel(
        stage: 'Production',
        comment: [
          CommentModel(
            isReply: true,
            readStatus: false,
            isUpdateStatus: false,
            publisherName: 'Wayne Smith',
            createdAt: '6 hours ago',
            content: 'can you share me the report?',
          ),
          CommentModel(
            isReply: false,
            readStatus: false,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: false,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Sample 2',
        order:
        OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        timeLine: '16/08/2022 - 31/08/2022',
        timeValue: '4h ago',
        status: 'In progress')
  ]),
  ManufacturingGroupModel(id: '#12356', products: [
    ProductModel(
      stage: 'Quality Inspections',
      comment: [
        CommentModel(
          isReply: false,
          readStatus: true,
          isUpdateStatus: false,
          photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
          publisherName: 'Joseph Collman',
          createdAt: '6 hours ago',
          isApproved: true,
          adminName: 'Shiva Chauhan',
          approvedTime: '1 hour ago',
          content: 'Published a new inspection report',
        ),
        CommentModel(
          isReply: false,
          readStatus: true,
          isUpdateStatus: true,
          publisherName: 'Wyatt Mcmickle',
          createdAt: '12 hours ago',
          content: 'Pre-production check',
        ),
        CommentModel(
          isReply: true,
          readStatus: true,
          isUpdateStatus: false,
          photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
          publisherName: 'Todd Lager',
          createdAt: '16 hours ago',
          content: '@wyatt when will the report be available?',
        )
      ],
      title: 'Sample 2',
      order:
      OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
      timeLine: '16/08/2022 - 31/08/2022',
      timeValue: '4m ago',
      status: 'In progress',
    ),
    ProductModel(
        stage: 'Quality Control',
        comment: [
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
            publisherName: 'Joseph Collman',
            createdAt: '6 hours ago',
            isApproved: true,
            adminName: 'Shiva Chauhan',
            approvedTime: '1 hour ago',
            content: 'Published a new inspection report',
          ),
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Pre-shipment',
        order: OrderModel(
            id: '#80150', productName: 'Summer Linen T Shirt DD11'),
        timeLine: '17/08/2022 - 10/08/2022',
        timeValue: '23m ago',
        status: 'Production'),
    ProductModel(
        stage: 'Production',
        comment: [
          CommentModel(
            isReply: true,
            readStatus: false,
            isUpdateStatus: false,
            publisherName: 'Wayne Smith',
            createdAt: '6 hours ago',
            content: 'can you share me the report?',
          ),
          CommentModel(
            isReply: false,
            readStatus: false,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: false,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Sample 2',
        order:
        OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        timeLine: '16/08/2022 - 31/08/2022',
        timeValue: '4h ago',
        status: 'In progress',
        isMoreUpdate: true,
        totalUpdate: 1)
  ]),
  ManufacturingGroupModel(id: '#12357', products: [
    ProductModel(
        stage: 'Quality Inspections',
        comment: [
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
            publisherName: 'Joseph Collman',
            createdAt: '6 hours ago',
            isApproved: true,
            adminName: 'Shiva Chauhan',
            approvedTime: '1 hour ago',
            content: 'Published a new inspection report',
          ),
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Sample 2',
        order:
        OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        timeLine: '16/08/2022 - 31/08/2022',
        timeValue: '4m ago',
        status: 'In progress'),
    ProductModel(
        stage: 'Quality Control',
        comment: [
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
            publisherName: 'Joseph Collman',
            createdAt: '6 hours ago',
            isApproved: true,
            adminName: 'Shiva Chauhan',
            approvedTime: '1 hour ago',
            content: 'Published a new inspection report',
          ),
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Pre-shipment',
        order: OrderModel(
            id: '#80150', productName: 'Summer Linen T Shirt DD11'),
        timeLine: '17/08/2022 - 10/08/2022',
        timeValue: '23m ago',
        status: 'Production'),
    ProductModel(
        stage: 'Production',
        comment: [
          CommentModel(
            isReply: true,
            readStatus: true,
            isUpdateStatus: false,
            publisherName: 'Wayne Smith',
            createdAt: '6 hours ago',
            content: 'can you share me the report?',
          ),
          CommentModel(
            isReply: false,
            readStatus: true,
            isUpdateStatus: true,
            publisherName: 'Wyatt Mcmickle',
            createdAt: '12 hours ago',
            content: 'Pre-production check',
          ),
          CommentModel(
            isReply: true,
            readStatus: true,
            isUpdateStatus: false,
            photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
            publisherName: 'Todd Lager',
            createdAt: '16 hours ago',
            content: '@wyatt when will the report be available?',
          )
        ],
        title: 'Sample 2',
        order:
        OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        timeLine: '16/08/2022 - 31/08/2022',
        timeValue: '4h ago',
        status: 'In progress')
  ])
];